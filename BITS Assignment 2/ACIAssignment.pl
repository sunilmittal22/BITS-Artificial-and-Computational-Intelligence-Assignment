defect(N, EvG, IvG, I,i, Loc, D, VG) :- N =< 1, !, write('TRUE').
defect(N, EvG, IvG, I,i, Loc, D, VG) :- N > 1,
    (
    122.55 >= i ->
    (
        0.05 >= I ->
            (
                39.38 >= i ->
                (
                     EvG =< 1.4 ->
                     (
                        19.5 >= D  ->
                        (
                          IvG =< 2 ->
                          (
                            write('TRUE')
                          );
                          IvG > 2 ->
                            Loc =< 50 ->
                            (
                               write('FALSE')     
                            );
                            Loc > 50 ->
                                write('TRUE')    
                        );
                        D > 19.5 ->
                          write('TRUE')     
                     )
                     ;
                     EvG > 1.4 ->
                        write('TRUE')
                )
                ;
                i > 39.38 ->
                    VG =< 3 ->
                    (
                        write('FALSE')
                    );
                    VG > 3 ->
                         IVG =< 8 ->
                         (
                           I =< 0.04 ->
                           (
                                 EvG =< 14 ->
                                 (
                                     write('FALSE')    
                                 );
                                 EvG > 14 ->
                                     write('TRUE')                                       
                           );
                           I > 0.04 ->
                            i =<71.94 ->
                                (
                                  D =< 21 ->
                                  (
                                    write('TRUE') 
                                  );
                                  D > 21 ->
                                    write('FALSE')
                                );
                                i >71.94 ->
                                  write('FALSE')      
                         );
                         IVG > 8 ->
                            write('TRUE')
            );
        I >0.05 ->
            write('FALSE')
    );
    i > 122.55 ->
        write('TRUE')
    ).