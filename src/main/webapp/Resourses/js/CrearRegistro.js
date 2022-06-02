/*
Autor: Ivan Guadalupe Bustamante Cortés
Fecha creación: 01/05/2022
Fecha actualización: 10/05/2022
Descripción: JS y JQuery de Crear Registro
*/
$(document).ready(function() {
    $('#contact_form').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            Nombre: {
                validators: {
                        stringLength: {
                        min: 2,
                    },
                        notEmpty: {
                        message: 'Porfavor escriba su nombre'
                    }
                }
            },
             Apellido: {
                validators: {
                     stringLength: {
                        min: 2,
                    },
                    notEmpty: {
                        message: 'Porfavor escriba su apellido'
                    }
                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'Porfavor escriba su E-Mail'
                    },
                    emailAddress: {
                        message: 'Porfavor escriba un E-Mail valido'
                    }
                }
            },
          Contraseña: {
                validators: {
                     stringLength: {
                        min: 8,
                    },
                    notEmpty: {
                        message: 'Porfavor una contraseña'
                    }
                }
            },
            phone: {
                validators: {
                    notEmpty: {
                        message: 'Porfavor ingrese su numero de telefono'
                    },
                    phone: {
                        country: 'US',
                        message: 'Porfavor ingrese un numero valido'
                    }
                }
            },
            Direccion: {
                validators: {
                     stringLength: {
                        min: 8,
                    },
                    notEmpty: {
                        message: 'Porfavor escriba su direccion'
                    }
                }
            },
            
            state: {
                validators: {
                    notEmpty: {
                        message: 'Porfavor seleccione su sexo'
                    }
                }
            },
            
            comment: {
                validators: {
                      stringLength: {
                        min: 10,
                        max: 200,
                        message:'Please enter at least 10 characters and no more than 200'
                    },
                    notEmpty: {
                        message: 'Please supply a description of your project'
                    }
                    }
                }
            }
        })
        .on('success.form.bv', function(e) {
            $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
                $('#contact_form').data('bootstrapValidator').resetForm();

            // Prevent form submission
            e.preventDefault();

            // Get the form instance
            var $form = $(e.target);

            // Get the BootstrapValidator instance
            var bv = $form.data('bootstrapValidator');

            // Use Ajax to submit form data
            $.post($form.attr('action'), $form.serialize(), function(result) {
                console.log(result);
            }, 'json');
        });
});




