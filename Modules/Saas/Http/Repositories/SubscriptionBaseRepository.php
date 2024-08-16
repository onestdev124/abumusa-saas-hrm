<?php


namespace Modules\Saas\Http\Repositories;

use Illuminate\Database\Eloquent\Model;
use Modules\Saas\Http\Interfaces\EloquentRepositoryInterface;

class SubscriptionBaseRepository implements EloquentRepositoryInterface
{
    /**
     * @var Model
     */
    protected $model;

    /**
     * BaseRepository constructor.
     *
     * @param Model $model
     */
    public function __construct(Model $model)
    {
        $this->model = $model;
    }

    /**
     * @param array $attributes
     *
     * @return Model
     */
    public function create(array $attributes): Model
    {
        return $this->model->create($attributes);
    }

    /**
     * @param $id
     * @return Model
     */
    public function find($id):  ? Model
    {
        return $this->model->find($id);
    }
}
