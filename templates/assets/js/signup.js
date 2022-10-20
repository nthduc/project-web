
        // var updatemovienav = $('.sign-in ');
        // var list = $('.group-diary .week-table');
        // var plist = $('.photo-of-group .pog-content');

        // updatemovienav.each((i,e)=>{
        //     $(e).click(()=>{
        //         // updatemovienav.each((i,e)=>{
        //         //     $(e).removeClass('dark-br');
        //         // })
        //         // $(e).addClass('dark-br');
        //         let temp = '.signin-up #choose' + (i+1);
        //         list.each((ic,ec)=>{
        //             $(ec).removeClass('show');
        //             $(ec).addClass('hidden');
        //         });
        //         list.each((ic,ec)=>{
        //             $(temp).addClass('show');
        //             $(temp).removeClass('hidden');
        //         });
            
        //         // console.log(temp);
        //         // console.log($(temp));
        //         // $(temp).addClass('show');
        //     });
        // });



        var signUp = $('.sign-in form #chooseSignUp');
        signUp.click(()=>{
            console.log('checked');
            $('.sign-in').addClass('hidden');
            $('.sign-in').removeClass('show');
            $('.sign-up').addClass('show');
            $('.sign-up').removeClass('hidden');
        });

        var signIn = $('.create-new-account form #chooseSignIn');
        signIn.click(()=>{
            console.log('checked');
            $('.sign-up').addClass('hidden');
            $('.sign-up').removeClass('show');
            $('.sign-in').addClass('show');
            $('.sign-in').removeClass('hidden');
        });