<?php

namespace Modules\Saas\Listeners;

use Illuminate\Support\Facades\Mail;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Modules\Saas\Emails\SubscriptionRejectedMail;

class SendSubscriptionRejectedMailListener implements ShouldQueue
{
    /**
     * Create the event listener.
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     */
    public function handle($event): void
    {
        $data = $event->getData();

        Mail::to(@$data['email'])->send(new SubscriptionRejectedMail($data));
    }
}
