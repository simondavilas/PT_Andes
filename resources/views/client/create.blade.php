<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Crear cliente</title>
</head>
<body>
    @extends('layouts.app')
    @section('content')
    <div class="container">
        <form action="{{url('/client')}}" method="post">
            @csrf
            @include('client.form', ['modo' => 'Crear'])
        </form>
    </div>
    @endsection
</body>
</html>