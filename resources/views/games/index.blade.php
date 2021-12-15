@extends('layouts.app')
@section('title_page', 'Juegos')
@section('content')

<a href="{{ route('games.create') }}" class="btn btn-secondary">Nuevo Juego</a>
<hr>

<table class="table table-striped table-inverse table-responsive">
    <thead class="thead-default">
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>URL</th>
            <th>Status</th>
            <th>Imagen</th>
            <th>Acciones</th>
        </tr>
    </thead>

    <tbody>
        @forelse ($games as $game)
        <tr>
            <td scope="row">{{ $game->game_id }}</td>
            <td>{{ $game->name }}</td>
            <td>
                @if ($game->status)
                <a href="{{ $game->link }}" target="_blank" rel="noopener noreferrer">{{ substr($game->link, 0, 50) }}...</a>
                @else
                <p class="text-secondary">{{ substr($game->link, 0, 50) }}...</p>
                @endif
            </td>
            <td>
                @if ($game->status)
                <div class="p-3 mb-2 bg-success text-white rounded">Activo</div>
                @else
                <div class="p-3 mb-2 bg-danger text-white rounded">Inactivo</div>
                @endif

            </td>
            <td>
                <img style="max-width: 200px;" src="{{ $game->image }}" class="img-thumbnail" alt="Miniatura Juego">
            </td>
            <td>
                <a href="{{ route('games.edit',['game' => $game]) }}"
                    class="btn btn-warning p-3 mb-2 text-dark rounded">Editar</a>
            </td>
        </tr>
        @empty
        <tr>
            <td scope="row" colspan="6">Tabla Vacia</td>
        </tr>
        @endforelse
    </tbody>
</table>


@endsection