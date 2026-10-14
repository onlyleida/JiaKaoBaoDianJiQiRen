.class public Lcn/mucang/android/jiakaoyi/exam/k3/light/LightDataCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final allTopics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final innerGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightDataCreator;->allTopics:Ljava/util/List;

    .line 2
    new-instance v7, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v2, 0x1

    const v3, 0x18eda

    const-string v4, "\u5c06\u8981\u8fdb\u884c\u591c\u95f4\u884c\u9a76\uff0c\u8bf7\u6253\u5f00\u524d\u7167\u706f"

    const-string v5, "\u5f00\u59cb-\u6253\u5f00\u8fd1\u5149\u706f"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 v1, 0x1

    .line 3
    iput v1, v7, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->type:I

    .line 4
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/4 v10, 0x2

    const v11, 0x18ede

    const-string v12, "\u591c\u95f4\u5728\u7a84\u8def\u4e0e\u975e\u673a\u52a8\u8f66\u4f1a\u8f66"

    const-string v13, "\u8fd1\u5149\u706f"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    const/16 v17, 0x3

    const v18, 0x18edf

    const-string v19, "\u591c\u95f4\u540c\u65b9\u5411\u8fd1\u8ddd\u79bb\u8ddf\u8f66\u884c\u9a76"

    const-string v20, "\u8fd1\u5149\u706f"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/4 v10, 0x4

    const v11, 0x18ee0

    const-string v12, "\u591c\u95f4\u9047\u5bf9\u65b9\u4f1a\u8f66\u8ddd\u5bf9\u65b9\u6765\u8f66\u5c06\u8fd1150\u7c73"

    const-string v13, "\u8fd1\u5149\u706f"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    const/16 v17, 0x5

    const v18, 0x18ee6

    const-string v19, "\u8fdb\u5165\u7167\u660e\u826f\u597d\u8def\u6bb5"

    const-string v20, "\u8fd1\u5149\u706f"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v10, 0x6

    const v11, 0x18ee7

    const-string v12, "\u524d\u65b9\u901a\u8fc7\u8def\u53e3"

    const-string v13, "\u8fd1\u5149\u706f"

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    const/16 v16, 0x7

    const v17, 0x18ee8

    const-string v18, "\u524d\u65b9\u8bf7\u4f1a\u8f66"

    const-string v19, "\u8fd1\u5149\u706f"

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v10, 0x8

    const v11, 0x18ee9

    const-string v12, "\u591c\u95f4\u4e0e\u673a\u52a8\u8f66\u4f1a\u8f66"

    const-string v13, "\u8fd1\u5149\u706f"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    const/16 v17, 0x9

    const v18, 0x18edb

    const-string v19, "\u591c\u95f4\u5728\u6ca1\u6709\u8def\u706f\uff0c\u7167\u660e\u4e0d\u826f\u6761\u4ef6\u4e0b\u884c\u9a76"

    const-string v20, "\u8fdc\u5149\u706f"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v10, 0xa

    const v11, 0x18ee5

    const-string v12, "\u8bf7\u5c06\u524d\u7167\u706f\u53d8\u6362\u6210\u8fdc\u5149"

    const-string v13, "\u8fdc\u5149\u706f"

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FlashLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    const/16 v16, 0xb

    const v17, 0x18ee1

    const-string v18, "\u591c\u95f4\u901a\u8fc7\u6025\u5f2f\u3001\u5761\u8def\u3001\u62f1\u6865\u3001\u4eba\u884c\u6a2a\u9053"

    const-string v19, "\u95ea\u706f"

    move-object v15, v2

    invoke-direct/range {v15 .. v20}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v10, 0xc

    const v11, 0x18ee2

    const-string v12, "\u591c\u95f4\u901a\u8fc7\u6ca1\u6709\u4ea4\u901a\u4fe1\u53f7\u706f\u63a7\u5236\u7684\u8def\u53e3"

    const-string v13, "\u95ea\u706f"

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    const/16 v16, 0xd

    const v17, 0x18eeb

    const-string v18, "\u8d85\u8d8a\u524d\u65b9\u8f66\u8f86"

    const-string v19, "\u95ea\u706f"

    move-object v15, v2

    invoke-direct/range {v15 .. v20}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    const/4 v5, 0x2

    new-array v6, v5, [Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WidthLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const/4 v15, 0x0

    aput-object v7, v6, v15

    sget-object v16, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    aput-object v16, v6, v1

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v10, 0xe

    const v11, 0x18edd

    const-string v12, "\u8def\u8fb9\u4e34\u65f6\u505c\u8f66"

    const-string v13, "\u793a\u5bbd\u706f+\u5371\u9669\u8b66\u62a5\u95ea\u5149\u706f"

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    new-array v6, v5, [Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    aput-object v7, v6, v15

    aput-object v16, v6, v1

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    const/16 v18, 0xf

    const v19, 0x18ee3

    const-string v20, "\u591c\u95f4\u5728\u9053\u8def\u4e0a\u53d1\u751f\u6545\u969c\uff0c\u59a8\u788d\u4ea4\u901a\u53c8\u96be\u4ee5\u79fb\u52a8"

    const-string v21, "\u793a\u5bbd\u706f+\u5371\u9669\u8b66\u62a5\u95ea\u5149\u706f"

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    const/4 v3, 0x4

    new-array v3, v3, [Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    aput-object v8, v3, v15

    aput-object v16, v3, v1

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    aput-object v6, v3, v5

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const/4 v7, 0x3

    aput-object v6, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v10, 0x10

    const v11, 0x18ee4

    const-string v12, "\u96fe\u5929\u884c\u9a76"

    const-string v13, "\u8fd1\u5149\u706f+\u5371\u9669\u8b66\u62a5\u95ea\u5149\u706f+\u96fe\u706f"

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    new-array v3, v7, [Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    aput-object v6, v3, v15

    aput-object v4, v3, v1

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    const/16 v17, 0x11

    const v18, 0x18edc

    const/16 v19, 0x1

    const-string v20, "\u591c\u95f4\u8d85\u8f66"

    const-string v21, "1.\u5f00\u542f\u5de6\u8f6c\u5411\u706f\uff0c2.\u8fdc\u8fd1\u4ea4\u66ff\uff0c3.\u5f00\u542f\u53f3\u8f6c\u5411\u706f"

    const/16 v23, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v23}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>(IIZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 21
    iput v1, v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->tag:I

    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->Off:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v4, 0x12

    const v5, 0x18eea

    const-string v6, "\u6a21\u62df\u591c\u95f4\u8003\u8bd5\u5b8c\u6210\uff0c\u8bf7\u5173\u95ed\u6240\u6709\u706f\u5149"

    const-string v7, "\u7ed3\u675f-\u5173\u95ed\u6240\u6709\u706f\u5149"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/16 v2, 0x14

    .line 24
    iput v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->type:I

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightDataCreator;->innerGroup:Ljava/util/List;

    const/4 v1, 0x6

    new-array v2, v1, [I

    .line 27
    fill-array-data v2, :array_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x8

    new-array v3, v2, [I

    .line 28
    fill-array-data v3, :array_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v3, v2, [I

    .line 29
    fill-array-data v3, :array_2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x7

    new-array v3, v3, [I

    .line 30
    fill-array-data v3, :array_3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v1, [I

    .line 31
    fill-array-data v1, :array_4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v2, [I

    .line 32
    fill-array-data v1, :array_5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v2, [I

    .line 33
    fill-array-data v1, :array_6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x9

    new-array v1, v1, [I

    .line 34
    fill-array-data v1, :array_7

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x5
        0x8
        0xc
        0xe
        0x12
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x7
        0x6
        0x3
        0xc
        0xe
        0xd
        0x12
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x6
        0x7
        0xd
        0x5
        0xb
        0xe
        0x12
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x9
        0x7
        0xb
        0x3
        0xe
        0x12
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x6
        0x5
        0x7
        0xd
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x1
        0xa
        0x5
        0x2
        0xb
        0x3
        0xe
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x5
        0x6
        0x8
        0xd
        0xf
        0xd
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x5
        0x7
        0xd
        0x8
        0xc
        0xe
        0xb
        0x12
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)I
    .locals 1

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    iget p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    sub-int v0, p0, p1

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sub-int/2addr p0, p1

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static addExamModel(Ljava/util/List;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;I)V"
        }
    .end annotation

    if-ltz p2, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->copy()Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static createLightData(Ljava/util/List;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->b()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202142:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    .line 3
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202142:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_0

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 4
    :cond_1
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_0

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_f

    if-eqz v0, :cond_e

    .line 5
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    goto/16 :goto_9

    .line 6
    :cond_2
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 7
    iget-object v7, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xc8

    goto :goto_2

    :cond_3
    const/4 v7, 0x1

    :goto_2
    if-lez v7, :cond_12

    add-int/lit8 v7, v7, -0x1

    .line 8
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    .line 12
    iget v13, v12, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    if-lez v13, :cond_4

    .line 13
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 14
    :cond_4
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 15
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_8

    .line 16
    invoke-static {v10}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightDataCreator;->groupByLightType(Ljava/util/List;)Ljava/util/Map;

    move-result-object v11

    .line 17
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    .line 18
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    invoke-static {v12}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 20
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v13

    sub-int v13, v3, v13

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v3, :cond_8

    .line 21
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    rem-int v15, v14, v15

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 22
    invoke-static {v15}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v16

    if-eqz v16, :cond_6

    goto :goto_5

    .line 23
    :cond_6
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v5, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v17

    mul-double v5, v5, v17

    double-to-int v4, v5

    invoke-interface {v15, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v8, v10, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightDataCreator;->addExamModel(Ljava/util/List;Ljava/util/List;I)V

    .line 24
    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v17, 0x3fe999999999999aL    # 0.8

    cmpl-double v6, v4, v17

    if-lez v6, :cond_7

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    if-lez v13, :cond_7

    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v14, v14, 0x1

    .line 25
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v17

    mul-double v4, v4, v17

    double-to-int v4, v4

    invoke-interface {v15, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v8, v10, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightDataCreator;->addExamModel(Ljava/util/List;Ljava/util/List;I)V

    :cond_7
    :goto_5
    const/4 v4, 0x1

    add-int/2addr v14, v4

    const/4 v4, 0x2

    const/4 v6, 0x1

    goto :goto_4

    .line 26
    :cond_8
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 27
    sget-object v4, Lcn/mucang/android/jiakaoyi/exam/k3/light/c;->a:Lcn/mucang/android/jiakaoyi/exam/k3/light/c;

    invoke-static {v9, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v4, 0x0

    .line 28
    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 29
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    .line 30
    iget v6, v5, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    add-int/lit8 v10, v6, -0x1

    if-ltz v10, :cond_a

    .line 31
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-gt v6, v10, :cond_9

    .line 32
    iget v6, v5, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    const/4 v10, 0x1

    sub-int/2addr v6, v10

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->copy()Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    move-result-object v5

    invoke-interface {v8, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_7

    .line 33
    :cond_9
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->copy()Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 34
    :cond_b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c

    const/4 v4, 0x0

    .line 35
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    const/4 v6, 0x1

    .line 36
    iput-boolean v6, v5, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isStart:Z

    .line 37
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x2

    if-lt v5, v9, :cond_d

    .line 38
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    .line 39
    iput-boolean v6, v5, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isEnd:Z

    goto :goto_8

    :cond_c
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x2

    .line 40
    :cond_d
    :goto_8
    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x2

    goto/16 :goto_2

    :cond_e
    :goto_9
    return-object v2

    .line 41
    :cond_f
    invoke-static/range {p1 .. p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 42
    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightDataCreator;->selectInnerTopicAssemble(Ljava/util/List;Ljava/util/List;)V

    goto :goto_a

    .line 43
    :cond_10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v3, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    mul-double v3, v3, v5

    double-to-int v1, v3

    move-object/from16 v3, p1

    .line 44
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;

    .line 45
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;->getLights()Ljava/util/List;

    move-result-object v1

    .line 46
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 47
    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightDataCreator;->selectInnerTopicAssemble(Ljava/util/List;Ljava/util/List;)V

    goto :goto_a

    .line 48
    :cond_11
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_12
    :goto_a
    return-object v2
.end method

.method private static groupByLightType(Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_4

    .line 5
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    .line 6
    iget-object v7, v5, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-static {v7}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_3

    iget v7, v5, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    if-lez v7, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    iget-object v7, v5, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v6, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    .line 9
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_2

    .line 10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v3, v6

    goto :goto_3

    :cond_5
    return-object v0
.end method

.method private static selectInnerTopicAssemble(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightDataCreator;->innerGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    .line 3
    invoke-static {p1, p0, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightDataCreator;->addExamModel(Ljava/util/List;Ljava/util/List;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
