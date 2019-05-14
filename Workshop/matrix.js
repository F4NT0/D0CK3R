 /*esta função de Jquery serve para esconder a informação de um texto e mostrar uma imagem*/
 $(document).ready(function () {
    $("button[name='choice1']").click(function () {
        $("h2[name='blue']").hide("slow", function () {
            alert("HELLO MR ANDERSON!");

        });

    });

    /*esta função de Jquery serve para esconder a informação de um texto e mostrar uma imagem*/
    $(document).ready(function () {
        $("button[name='choice2']").click(function () {
            $("h2[name='red']").hide("slow", function () {
                alert("OPEN YOUR MIND!");

            });
        });
    });

});