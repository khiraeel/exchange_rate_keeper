<?php

namespace App\EventListener;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Event\RequestEvent;
use Symfony\Component\EventDispatcher\Attribute\AsEventListener;

//#[AsEventListener]
class RequestListener
{
    public function __invoke(RequestEvent $event): void
    {
        dd($event->getRequest()->getPayload());
    }
}
