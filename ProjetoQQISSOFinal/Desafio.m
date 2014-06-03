//
//  Desafio.m
//  ProjetoQQISSOFinal
//
//  Created by Rodrigo Von-Grapp Freitas on 03/06/14.
//  Copyright (c) 2014 Rodrigo Freitas. All rights reserved.
//

#import "Desafio.h"

@implementation Desafio
- (void)setNroTelas:(int)nroTelas{
    _nroTelas = nroTelas;
}
- (Desafio *)populaDesafioComNroTelas: (int)telas eComArrayImg:(NSMutableArray *)imgs eComPergunta:(Pergunta *)pergunta eCorBackGround:(UIColor *)cor eVelocTransicao:(int)velocidade{
    Desafio * d = [[Desafio alloc]init];
    [d setNroTelas:telas];
    [d setImages:imgs];
    [d setPergunta:pergunta];
    [d setCor:cor];
    [d setVelocidadeTransicao:velocidade];
    
    
    return d;
}
@end
