//
//  Pergunta.h
//  ProjetoQQISSOFinal
//
//  Created by Rodrigo Von-Grapp Freitas on 03/06/14.
//  Copyright (c) 2014 Rodrigo Freitas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Resposta.h"
typedef NS_ENUM(NSInteger, Categoria) {
    FILMES,
    JOGOS,
    COMIDAS
};
@interface Pergunta : NSObject
@property (nonatomic,weak) NSString *nomeDaPergunta;
@property (nonatomic) int idPergunta;
@property (nonatomic) Categoria cat;
@property (nonatomic,weak) Resposta *resp;



- (NSString *)getPergunta:(int) cod;

- (void)setPerguntaComId:(int)cod comPergunta:(NSString *)pergunta eCategoria:(Categoria)cat eResposta:(Resposta* ) resp;
@end
