<?php
/**
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 */
namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Twig\Environment;
use eZ\Publish\API\Repository\SearchService;
use App\QueryType\MenuQueryType;

class MenuController
{
    /** @var \Symfony\Bundle\TwigBundle\TwigEngine */
    protected $templating;

    /** @var \eZ\Publish\API\Repository\SearchService */
    protected $searchService;

    /** @var \App\QueryType\MenuQueryType */
    protected $menuQueryType;

    /** @var int */
    protected $topMenuParentLocationId;

    /** @var array */
    protected $topMenuContentTypeIdentifier;

    /**
     * @param \Symfony\Component\Templating\EngineInterface $templating
     * @param \eZ\Publish\API\Repository\SearchService $searchService
     * @param \App\QueryType\MenuQueryType $menuQueryType
     * @param int $topMenuParentLocationId
     * @param array $topMenuContentTypeIdentifier
     */
    public function __construct(
        Environment $templating,
        SearchService $searchService,
        MenuQueryType $menuQueryType,
        $topMenuParentLocationId,
        $topMenuContentTypeIdentifier
    ) {
        $this->templating = $templating;
        $this->searchService = $searchService;
        $this->menuQueryType = $menuQueryType;
        $this->topMenuParentLocationId = $topMenuParentLocationId;
        $this->topMenuContentTypeIdentifier = $topMenuContentTypeIdentifier;
    }

    /**
     * Renders top menu with child items.
     *
     * @param string $template
     * @param string|null $pathString
     *
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function getChildNodesAction($template, $pathString = null)
    {
        $query = $this->menuQueryType->getQuery([
            'parent_location_id' => $this->topMenuParentLocationId,
            'included_content_type_identifier' => $this->topMenuContentTypeIdentifier,
        ]);

        $locationSearchResults = $this->searchService->findLocations($query);

        $menuItems = [];
        foreach ($locationSearchResults->searchHits as $hit) {
            $menuItems[] = $hit->valueObject;
        }

        $pathArray = $pathString ? explode("/", $pathString) : [];
        // dump($pathArray);
        // die();
        $response = new Response();
        $response->setVary('X-User-Hash');
        $content = $this->templating->render(
            $template, [
                'menuItems' => $menuItems,
                'pathArray' => $pathArray,
            ]
        );

        $response->setContent($content);

        return $response;
    }
}
