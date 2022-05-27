<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Editar Usuario</title>
</head>
<body>
    <h1> Editar Usuario </h1>
    @if(count($errors)>0)

    <div class="alert alert-danger" role="alert">
        <ul>
            @foreach($errors->all() as $error)
                <li>
                    {{ $error }}
                </li>
            @endforeach
        </ul>
    </div>
    @endif

    <div class="form-group">
        <label for="name"> name</label>
        <input type=text class="form-control" name="name" value="{{isset($user->name)?$user->name:''}}" id="name">
        <br>
    </div>
    <div class="form-group">
        <label for="city"> email</label>
        <input type=text class="form-control" name="email" value="{{isset($user->email)?$user->email:''}}" id="email">
        <br>
    </div>

    <input class="btn btn-success" type="submit" value="Guardar Datos">
    <a class="btn btn-primary" href="{{url('users/')}}"> Volver </a>

</body>
</html>