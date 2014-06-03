//
//  Desafio.h
//  ProjetoQQISSOFinal
//
//  Created by Rodrigo Von-Grapp Freitas on 03/06/14.
//  Copyright (c) 2014 Rodrigo Freitas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pergunta.h"
@interface Desafio : NSObject
@property (nonatomic) int nroTelas;
@property (nonatomic,weak) NSMutableArray * images;
@property (nonatomic,weak) Pergunta *pergunta;
@property (nonatomic,weak) UIColor *cor;
@property (nonatomic) int velocidadeTransicao;


- (void)setNroTelas:(int)nroTelas;
- (Desafio *)populaDesafioComNroTelas: (int)telas eComArrayImg:(NSMutableArray *)imgs eComPergunta:(Pergunta *)pergunta eCorBackGround:(UIColor *)cor eVelocTransicao:(int)velocidade;

@end
