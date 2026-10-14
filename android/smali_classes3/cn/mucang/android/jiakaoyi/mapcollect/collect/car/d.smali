.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;
.super Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lcn/mucang/android/jiakaoyi/signal/i/a;

.field public final e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field private h:Lcn/mucang/android/jiakaoyi/signal/i/a;

.field private i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

.field private final j:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->d:Lcn/mucang/android/jiakaoyi/signal/i/a;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->g:Z

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h:Lcn/mucang/android/jiakaoyi/signal/i/a;

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->j:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->f:Ljava/util/Map;

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->n()V

    return-void
.end method

.method public static f()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->e()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "car.position."

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->h(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static g(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;
    .locals 4

    const-string v0, "car.position."

    const-string v1, ""

    :try_start_0
    const-string v2, "car.position.987654321"

    .line 1
    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->e()Ljava/util/Set;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    const-class v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    return-object p0

    .line 11
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->j()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 12
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "{\"backDistance\":32.0,\"carPoints\":{0:{\"altitude\":26.520999908447266,\"latitude\":30.434506675,\"longitude\":114.41985515333333},1:{\"altitude\":26.534000396728516,\"latitude\":30.434507593333333,\"longitude\":114.41985362833333},2:{\"altitude\":26.516000747680664,\"latitude\":30.434508565,\"longitude\":114.41985148333333},3:{\"altitude\":26.509000778198242,\"latitude\":30.434508301666668,\"longitude\":114.41984740666666},4:{\"altitude\":26.51300048828125,\"latitude\":30.434506543333335,\"longitude\":114.419844325},5:{\"altitude\":26.518999099731445,\"latitude\":30.434503426666666,\"longitude\":114.41984157166667},6:{\"altitude\":26.51300048828125,\"latitude\":30.43450077,\"longitude\":114.41983957666666},7:{\"altitude\":26.51300048828125,\"latitude\":30.434497156666666,\"longitude\":114.419836475},8:{\"altitude\":26.4950008392334,\"latitude\":30.434493576666668,\"longitude\":114.41983344333333},9:{\"altitude\":26.507999420166016,\"latitude\":30.434485563333332,\"longitude\":114.41982690666667},10:{\"altitude\":26.479000091552734,\"latitude\":30.43447837,\"longitude\":114.41982265333333},11:{\"altitude\":26.483999252319336,\"latitude\":30.434475231666667,\"longitude\":114.41982529833334},12:{\"altitude\":26.493000030517578,\"latitude\":30.434474343333335,\"longitude\":114.41982657},13:{\"altitude\":26.479999542236328,\"latitude\":30.434473458333333,\"longitude\":114.41982788166666},14:{\"altitude\":26.488000869750977,\"latitude\":30.434470735,\"longitude\":114.419835315},15:{\"altitude\":26.472000122070312,\"latitude\":30.434476601666667,\"longitude\":114.419841805},16:{\"altitude\":26.489999771118164,\"latitude\":30.434481551666668,\"longitude\":114.41984581},17:{\"altitude\":26.48200035095215,\"latitude\":30.434484515,\"longitude\":114.41984832833333},18:{\"altitude\":26.492000579833984,\"latitude\":30.434490151666665,\"longitude\":114.41985281833334},19:{\"altitude\":26.499000549316406,\"latitude\":30.434499101666667,\"longitude\":114.41985975333333},20:{\"altitude\":26.493000030517578,\"latitude\":30.434500036666666,\"longitude\":114.41985979},21:{\"altitude\":26.4950008392334,\"latitude\":30.434502903333332,\"longitude\":114.41985920666667},22:{\"altitude\":26.503000259399414,\"latitude\":30.434505341666668,\"longitude\":114.41985707333333},23:{\"altitude\":26.493999481201172,\"latitude\":30.434506528333333,\"longitude\":114.41985560166667}},\"frontDistance\":31.0,\"leftBackOffset\":-3.0,\"leftBackWidth\":15.0,\"leftFrontOffset\":-3.0,\"leftFrontWidth\":15.0,\"leftMirrorPoints\":{0:{\"altitude\":26.14900016784668,\"latitude\":30.434500296666666,\"longitude\":114.41983982666666},1:{\"altitude\":26.475000381469727,\"latitude\":30.434501968333333,\"longitude\":114.41983633333334},2:{\"altitude\":26.490999221801758,\"latitude\":30.434501565,\"longitude\":114.41983502333333},3:{\"altitude\":26.503000259399414,\"latitude\":30.434500656666668,\"longitude\":114.41983551333334},4:{\"altitude\":26.518999099731445,\"latitude\":30.434499773333332,\"longitude\":114.41983728833333},5:{\"altitude\":26.229999542236328,\"latitude\":30.434499698333333,\"longitude\":114.41983979333334}},\"mainPoint\":{\"altitude\":26.735000610351562,\"latitude\":30.434484103333332,\"longitude\":114.41983706166667},\"mainPosDegree\":32.978302001953125,\"mainPosDistance\":0.892494261264801,\"mainPosHeight\":150.0,\"pitch\":-6.823547840118408,\"rightBackOffset\":-4.0,\"rightBackWidth\":15.0,\"rightFrontOffset\":-4.0,\"rightFrontWidth\":15.0,\"rightMirrorPoints\":{0:{\"altitude\":26.21299934387207,\"latitude\":30.434492131666666,\"longitude\":114.41985316833333},1:{\"altitude\":26.506000518798828,\"latitude\":30.434488755,\"longitude\":114.41985712833333},2:{\"altitude\":26.527999877929688,\"latitude\":30.434487565,\"longitude\":114.41985702333334},3:{\"altitude\":26.503999710083008,\"latitude\":30.434487475,\"longitude\":114.419855495},4:{\"altitude\":26.503999710083008,\"latitude\":30.434489575,\"longitude\":114.419853275},5:{\"altitude\":26.261999130249023,\"latitude\":30.43449149,\"longitude\":114.41985260166666}},\"stepId\":-99,\"time\":1610682131687,\"wheelLeftBack\":{\"altitude\":26.500999450683594,\"latitude\":30.434485611666666,\"longitude\":114.41982706},\"wheelLeftFront\":{\"altitude\":26.481000900268555,\"latitude\":30.434504781666668,\"longitude\":114.41984253166666},\"wheelRightBack\":{\"altitude\":26.499000549316406,\"latitude\":30.434476695,\"longitude\":114.41984178333334},\"wheelRightFront\":{\"altitude\":26.503999710083008,\"latitude\":30.434495736666666,\"longitude\":114.41985747333334}}"

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "{\"backDistance\":38.0,\"carPoints\":{0:{\"altitude\":30.777000427246094,\"latitude\":30.45757555,\"longitude\":114.44687216333334},1:{\"altitude\":30.77899932861328,\"latitude\":30.457574035,\"longitude\":114.44687321333333},2:{\"altitude\":30.78499984741211,\"latitude\":30.45757359,\"longitude\":114.44687363},3:{\"altitude\":30.783000946044922,\"latitude\":30.457573556666667,\"longitude\":114.44687378},4:{\"altitude\":30.770999908447266,\"latitude\":30.45757386,\"longitude\":114.44687867},5:{\"altitude\":30.77899932861328,\"latitude\":30.4575731,\"longitude\":114.44688028833333},6:{\"altitude\":30.792999267578125,\"latitude\":30.457576198333335,\"longitude\":114.44688794},7:{\"altitude\":30.777000427246094,\"latitude\":30.457573545,\"longitude\":114.44688878333334},8:{\"altitude\":30.768999099731445,\"latitude\":30.457574085,\"longitude\":114.44689184},9:{\"altitude\":30.767000198364258,\"latitude\":30.457575476666666,\"longitude\":114.44689865166667},10:{\"altitude\":30.78499984741211,\"latitude\":30.457576721666666,\"longitude\":114.446904455},11:{\"altitude\":30.759000778198242,\"latitude\":30.457577335,\"longitude\":114.44690746166667},12:{\"altitude\":30.756000518798828,\"latitude\":30.457583068333335,\"longitude\":114.446905865},13:{\"altitude\":30.761999130249023,\"latitude\":30.457588253333334,\"longitude\":114.44690409},14:{\"altitude\":30.7810001373291,\"latitude\":30.457587643333333,\"longitude\":114.44690125333334},15:{\"altitude\":30.761999130249023,\"latitude\":30.45758650166667,\"longitude\":114.44689563333333},16:{\"altitude\":30.775999069213867,\"latitude\":30.457584995,\"longitude\":114.44688884666667},17:{\"altitude\":30.757999420166016,\"latitude\":30.457584116666666,\"longitude\":114.446885765},18:{\"altitude\":30.759000778198242,\"latitude\":30.457581501666667,\"longitude\":114.446886475},19:{\"altitude\":30.76799964904785,\"latitude\":30.457580973333332,\"longitude\":114.44687817},20:{\"altitude\":30.766000747680664,\"latitude\":30.457579381666665,\"longitude\":114.44687658},21:{\"altitude\":30.767000198364258,\"latitude\":30.457578256666668,\"longitude\":114.44687288333333},22:{\"altitude\":30.76099967956543,\"latitude\":30.457578285,\"longitude\":114.44687290333333},23:{\"altitude\":30.7549991607666,\"latitude\":30.45757752,\"longitude\":114.44687263666667}},\"frontDistance\":41.5,\"leftBackOffset\":-2.0,\"leftBackWidth\":10.0,\"leftFrontOffset\":-4.0,\"leftFrontWidth\":10.0,\"leftMirrorPoints\":{},\"mainPoint\":{\"altitude\":30.280000686645508,\"latitude\":30.457585315,\"longitude\":114.446897255},\"mainPosDegree\":165.7218017578125,\"mainPosDistance\":0.9349974393844604,\"mainPosHeight\":135.0,\"pitch\":-0.7798784971237183,\"rightBackOffset\":-3.0,\"rightBackWidth\":10.0,\"rightFrontOffset\":-3.0,\"rightFrontWidth\":10.0,\"rightMirrorPoints\":{},\"stepId\":-99,\"time\":1599194773236,\"wheelLeftBack\":{\"altitude\":30.756000518798828,\"latitude\":30.45757553,\"longitude\":114.446898665},\"wheelLeftFront\":{\"altitude\":31.086999893188477,\"latitude\":30.457575478333332,\"longitude\":114.44687552833334},\"wheelRightBack\":{\"altitude\":30.77400016784668,\"latitude\":30.457586508333332,\"longitude\":114.446895645},\"wheelRightFront\":{\"altitude\":31.06399917602539,\"latitude\":30.457576993333333,\"longitude\":114.44687526833333}}"

    goto :goto_0

    :cond_4
    const-string p0, "{\"backDistance\":38.0,\"carPoints\":{11:{\"altitude\":0.0,\"latitude\":30.434034538666666,\"longitude\":114.42064590158333},1:{\"altitude\":0.0,\"latitude\":30.43404901341667,\"longitude\":114.42067928433333},15:{\"altitude\":0.0,\"latitude\":30.43402316725,\"longitude\":114.42064503816667},6:{\"altitude\":0.0,\"latitude\":30.434056440583333,\"longitude\":114.420671446},23:{\"altitude\":0.0,\"latitude\":30.43404353375,\"longitude\":114.42067678325},17:{\"altitude\":0.0,\"latitude\":30.434021218333335,\"longitude\":114.42064795524999},21:{\"altitude\":0.0,\"latitude\":30.434024882750002,\"longitude\":114.42066005108333},14:{\"altitude\":0.0,\"latitude\":30.434024402749998,\"longitude\":114.42064359525},16:{\"altitude\":0.0,\"latitude\":30.4340224335,\"longitude\":114.42064602691667},7:{\"altitude\":0.0,\"latitude\":30.43405645775,\"longitude\":114.42066854933333},20:{\"altitude\":0.0,\"latitude\":30.434020101,\"longitude\":114.42065480533333},2:{\"altitude\":0.0,\"latitude\":30.4340515975,\"longitude\":114.4206785985},8:{\"altitude\":0.0,\"latitude\":30.434055648166666,\"longitude\":114.42066567358333},13:{\"altitude\":0.0,\"latitude\":30.434026373166667,\"longitude\":114.42064169791666},22:{\"altitude\":0.0,\"latitude\":30.43403769625,\"longitude\":114.42067153391667},19:{\"altitude\":0.0,\"latitude\":30.434019337,\"longitude\":114.42065304025},5:{\"altitude\":0.0,\"latitude\":30.434055385166666,\"longitude\":114.42067340933335},3:{\"altitude\":0.0,\"latitude\":30.434053099,\"longitude\":114.42067706216667},4:{\"altitude\":0.0,\"latitude\":30.434054150666668,\"longitude\":114.42067547366668},18:{\"altitude\":0.0,\"latitude\":30.434020110416668,\"longitude\":114.42065015016667},0:{\"altitude\":0.0,\"latitude\":30.434046414166666,\"longitude\":114.42067902608333},9:{\"altitude\":0.0,\"latitude\":30.434052859583332,\"longitude\":114.42066273374999},12:{\"altitude\":0.0,\"latitude\":30.43402835566667,\"longitude\":114.42064147325},10:{\"altitude\":0.0,\"latitude\":30.434042919416665,\"longitude\":114.42065347533332}},\"frontDistance\":41.5,\"leftBackOffset\":0.0,\"leftFrontOffset\":-3.0,\"mainPoint\":{\"altitude\":0.0,\"latitude\":30.434032634250002,\"longitude\":114.4206556895},\"mainPosDegree\":37.97760009765625,\"mainPosDistance\":0.9014999866485596,\"mainPosHeight\":164.5,\"pitch\":0.0,\"rightBackOffset\":0.0,\"rightFrontOffset\":-3.0,\"stepId\":-99,\"time\":1599194773236,\"wheelLeftBack\":{\"altitude\":0.0,\"latitude\":30.43403455158333,\"longitude\":114.42064588683334},\"wheelLeftFront\":{\"altitude\":0.0,\"latitude\":30.4340529165,\"longitude\":114.42066266966667},\"wheelRightBack\":{\"altitude\":0.0,\"latitude\":30.434024918833334,\"longitude\":114.42066005666666},\"wheelRightFront\":{\"altitude\":0.0,\"latitude\":30.434043289999998,\"longitude\":114.42067661725}}"

    .line 14
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;-><init>()V

    const-string v1, "\u6d4b\u8bd5"

    .line 15
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->driveSchoolName:Ljava/lang/String;

    const-string v1, "3r3woi"

    .line 16
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->plateNum:Ljava/lang/String;

    .line 17
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->modelCode:Ljava/lang/String;

    .line 18
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->modelName:Ljava/lang/String;

    .line 19
    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->bodyData:Ljava/lang/String;

    return-object v0

    .line 20
    :cond_5
    const-class v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    return-object p0

    .line 21
    :cond_6
    const-class p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    invoke-static {v2, p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h()Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->g(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private i(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->d:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    const-wide v2, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 4
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->d:Lcn/mucang/android/jiakaoyi/signal/i/a;

    :cond_1
    return-void
.end method

.method private synthetic k()V
    .locals 13

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->j:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->bodyData:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->getCarSrcData()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;)V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/i/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->main:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDistance:D

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDegree:D

    .line 7
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v3, v3, v7

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v7, v2

    check-cast v7, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v7, v7, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDistance:D

    mul-double v7, v7, v5

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDegree:D

    .line 8
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v7, v7, v5

    .line 9
    invoke-virtual {v1, v3, v4, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->generateCarData()Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;

    move-result-object v2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v4, v1

    check-cast v4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDegree:D

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->pitch:D

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {v2 .. v12}, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->update(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DDDLcn/mucang/android/jiakaoyi/hpmap/car/CarData$a;D)Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->set(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 12
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->g:Z

    .line 15
    :cond_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$g;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$g;-><init>()V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 16
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;-><init>()V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic m(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/w0/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/w0/a;-><init>()V

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/w0/a;->n(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    instance-of v0, p0, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p0

    check-cast v0, Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {v0}, Lcn/mucang/android/core/api/exception/ApiException;->getApiResponse()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/api/ApiResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private n()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/a;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private o(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v2, v1

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDegree:D

    invoke-direct {v0, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;D)V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p1

    return-object p1
.end method

.method public static q(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "car.position.987654321"

    .line 2
    invoke-static {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->q(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    .line 2
    new-instance p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/b;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/b;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public A(DZ)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDistance:D

    const-wide v3, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iput-wide p1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosHeight:D

    if-eqz p3, :cond_1

    const-string p1, "\u91c7\u96c6\u8f66\u8eab\u9ad8\u5ea6"

    .line 3
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    const-string p1, "\u8bf7\u5148\u91c7\u96c6\u4e3b\u5929\u7ebf"

    .line 4
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public B(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;Z)Z
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDistance:D

    const-wide v5, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->g:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v1, :cond_1

    const-string p1, "\u8bf7\u5148\u91cd\u65b0\u91c7\u96c6\u4e3b\u5929\u7ebf"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v2

    .line 5
    :cond_1
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->carPoints:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 6
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->carPoints:Ljava/util/Map;

    .line 7
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->carPoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->d:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    if-nez v2, :cond_3

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    .line 12
    :cond_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_4

    .line 13
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_4
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->g:Z

    if-nez v1, :cond_5

    .line 15
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_5
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p2

    .line 17
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->carPoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 p2, 0x1

    if-eqz p3, :cond_6

    .line 21
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u91c7\u96c6\u7b2c"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u70b9"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    :cond_6
    return p2

    :cond_7
    :goto_1
    if-eqz p3, :cond_8

    const-string p1, "\u8bf7\u5148\u91c7\u96c6\u4e3b\u5929\u7ebf"

    .line 22
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    :cond_8
    return v2
.end method

.method public C(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iput-wide p1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightBackOffset:D

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;-><init>()V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public D(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iput-wide p1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightBackWidth:D

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;-><init>()V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public E(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iput-wide p1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightFrontOffset:D

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;-><init>()V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public F(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iput-wide p1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightFrontWidth:D

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;-><init>()V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public G(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;Z)Z
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDistance:D

    const-wide v5, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->g:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v1, :cond_1

    const-string p1, "\u8bf7\u5148\u91cd\u65b0\u91c7\u96c6\u4e3b\u5929\u7ebf"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v2

    .line 5
    :cond_1
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightMirrorPoints:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 6
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightMirrorPoints:Ljava/util/Map;

    .line 7
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    if-nez v1, :cond_3

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    .line 9
    :cond_3
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->g:Z

    if-eqz v0, :cond_4

    .line 10
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p2

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->d:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 13
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_5

    .line 14
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightMirrorPoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    if-eqz p3, :cond_6

    .line 17
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u91c7\u96c6\u7b2c"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u4e2a\u70b9"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    :cond_6
    return p2

    :cond_7
    :goto_2
    if-eqz p3, :cond_8

    const-string p1, "\u8bf7\u5148\u91c7\u96c6\u4e3b\u5929\u7ebf"

    .line 18
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    :cond_8
    return v2
.end method

.method public H(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Z)Z
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDistance:D

    const-wide v5, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->g:Z

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v3, :cond_1

    const-string p1, "\u8bf7\u5148\u91cd\u65b0\u91c7\u96c6\u4e3b\u5929\u7ebf"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v2

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    .line 8
    :cond_2
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->d:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :goto_0
    if-eqz p2, :cond_3

    const-string p1, "\u91c7\u96c6\u5de6\u540e\u8f6e"

    .line 10
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    const-string p1, "\u8bf7\u5148\u91c7\u96c6\u4e3b\u5929\u7ebf"

    .line 11
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    :cond_5
    return v2
.end method

.method public I(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Z)Z
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDistance:D

    const-wide v5, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->g:Z

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v3, :cond_1

    const-string p1, "\u8bf7\u5148\u91cd\u65b0\u91c7\u96c6\u4e3b\u5929\u7ebf"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v2

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    .line 8
    :cond_2
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->d:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :goto_0
    if-eqz p2, :cond_3

    const-string p1, "\u91c7\u96c6\u5de6\u524d\u8f6e"

    .line 10
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    const-string p1, "\u8bf7\u5148\u91c7\u96c6\u4e3b\u5929\u7ebf"

    .line 11
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    :cond_5
    return v2
.end method

.method public J(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Z)Z
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDistance:D

    const-wide v5, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->g:Z

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v3, :cond_1

    const-string p1, "\u8bf7\u5148\u91cd\u65b0\u91c7\u96c6\u4e3b\u5929\u7ebf"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v2

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    .line 8
    :cond_2
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->d:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :goto_0
    if-eqz p2, :cond_3

    const-string p1, "\u91c7\u96c6\u53f3\u540e\u8f6e"

    .line 10
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    const-string p1, "\u8bf7\u5148\u91c7\u96c6\u4e3b\u5929\u7ebf"

    .line 11
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    :cond_5
    return v2
.end method

.method public K(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Z)Z
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDistance:D

    const-wide v5, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->g:Z

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v3, :cond_1

    const-string p1, "\u8bf7\u5148\u91cd\u65b0\u91c7\u96c6\u4e3b\u5929\u7ebf"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v2

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    .line 8
    :cond_2
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->d:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :goto_0
    if-eqz p2, :cond_3

    const-string p1, "\u91c7\u96c6\u53f3\u524d\u8f6e"

    .line 10
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    const-string p1, "\u8bf7\u5148\u91c7\u96c6\u4e3b\u5929\u7ebf"

    .line 11
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    :cond_5
    return v2
.end method

.method public L()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->generateCarData()Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;

    move-result-object v2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v4, v1

    check-cast v4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDegree:D

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->pitch:D

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {v2 .. v12}, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->update(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DDDLcn/mucang/android/jiakaoyi/hpmap/car/CarData$a;D)Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->set(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "\u540e\u5929\u7ebf\u6ca1\u6709\u91c7\u96c6"

    .line 2
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    .line 3
    :cond_0
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->carPoints:Ljava/util/Map;

    if-eqz v1, :cond_e

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->carPoints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v1, :cond_2

    const-string v0, "\u5de6\u524d\u8f6e\u6ca1\u6709\u91c7\u96c6"

    .line 5
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    .line 6
    :cond_2
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v1, :cond_3

    const-string v0, "\u5de6\u540e\u8f6e\u6ca1\u6709\u91c7\u96c6"

    .line 7
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    .line 8
    :cond_3
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v1, :cond_4

    const-string v0, "\u53f3\u524d\u8f6e\u6ca1\u6709\u91c7\u96c6"

    .line 9
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    .line 10
    :cond_4
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v1, :cond_5

    const-string v0, "\u53f3\u540e\u8f6e\u6ca1\u6709\u91c7\u96c6"

    .line 11
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    .line 12
    :cond_5
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosHeight:D

    const-wide/16 v3, 0x0

    cmpg-double v5, v0, v3

    if-gtz v5, :cond_6

    const-string v0, "\u8611\u83c7\u5934\u79bb\u5730\u9762\u9ad8\u5ea6\u6ca1\u6709\u91c7\u96c6"

    .line 13
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    .line 14
    :cond_6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 15
    :cond_7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "\u5de6\u8f6e\u5ed3"

    const-string v1, "\u53f3\u8f6e\u5ed3"

    goto :goto_0

    :cond_8
    const-string v0, "\u5de6\u540e\u89c6\u955c"

    const-string v1, "\u53f3\u540e\u89c6\u955c"

    .line 16
    :goto_0
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v4, v3

    check-cast v4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftMirrorPoints:Ljava/util/Map;

    const-string v5, "\u70b9"

    const-string v6, "\u8bf7\u91c7\u96c6"

    if-nez v4, :cond_9

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    .line 18
    :cond_9
    check-cast v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftMirrorPoints:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const-string v4, "\u70b9\u81f3\u5c11\u91c7\u96c63\u4e2a\u70b9"

    const/4 v7, 0x3

    if-ge v3, v7, :cond_a

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    .line 20
    :cond_a
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v3, v0

    check-cast v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightMirrorPoints:Ljava/util/Map;

    if-nez v3, :cond_b

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    .line 22
    :cond_b
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightMirrorPoints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v7, :cond_c

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    .line 24
    :cond_c
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)D

    move-result-wide v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v4, v0, v2

    if-lez v4, :cond_d

    .line 25
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 26
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->pitch:D

    iput-wide v3, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->pitch:D

    .line 27
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDistance:D

    iput-wide v3, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDistance:D

    .line 28
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v1, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDegree:D

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDegree:D

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h:Lcn/mucang/android/jiakaoyi/signal/i/a;

    :cond_d
    const-string v0, "\u91c7\u96c6\u5b8c\u6210"

    .line 30
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_e
    :goto_1
    const-string v0, "\u8f66\u8eab\u70b9\u6ca1\u6709\u91c7\u96c6\u5b8c\u6210"

    .line 31
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public j()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDistance:D

    const-wide v5, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_1

    return v2

    .line 3
    :cond_1
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->carPoints:Ljava/util/Map;

    if-eqz v1, :cond_c

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->carPoints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    goto/16 :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v1, :cond_3

    return v2

    .line 5
    :cond_3
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v1, :cond_4

    return v2

    .line 6
    :cond_4
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v1, :cond_5

    return v2

    .line 7
    :cond_5
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v0, :cond_6

    return v2

    .line 8
    :cond_6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9
    :cond_7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftMirrorPoints:Ljava/util/Map;

    const/4 v3, 0x3

    if-eqz v1, :cond_8

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftMirrorPoints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v3, :cond_8

    return v2

    .line 10
    :cond_8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftMirrorPoints:Ljava/util/Map;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightMirrorPoints:Ljava/util/Map;

    if-nez v1, :cond_9

    return v2

    .line 11
    :cond_9
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightMirrorPoints:Ljava/util/Map;

    if-eqz v1, :cond_a

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightMirrorPoints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v3, :cond_a

    return v2

    .line 12
    :cond_a
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightMirrorPoints:Ljava/util/Map;

    if-eqz v1, :cond_b

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftMirrorPoints:Ljava/util/Map;

    if-nez v0, :cond_b

    return v2

    :cond_b
    const/4 v0, 0x1

    return v0

    :cond_c
    :goto_0
    return v2
.end method

.method public synthetic l()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->k()V

    return-void
.end method

.method public p(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->bodyData:Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    return-void
.end method

.method public s(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iput-wide p1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->backDistance:D

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;-><init>()V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public t(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iput-wide p1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->frontDistance:D

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;-><init>()V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public u(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iput-wide p1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftBackOffset:D

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;-><init>()V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public v(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iput-wide p1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftBackWidth:D

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;-><init>()V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public w(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iput-wide p1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftFrontOffset:D

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;-><init>()V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public x(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iput-wide p1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftFrontWidth:D

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$f;-><init>()V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public y(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;Z)Z
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDistance:D

    const-wide v5, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->g:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v1, :cond_1

    const-string p1, "\u8bf7\u5148\u91cd\u65b0\u91c7\u96c6\u4e3b\u5929\u7ebf"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v2

    .line 5
    :cond_1
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftMirrorPoints:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 6
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftMirrorPoints:Ljava/util/Map;

    .line 7
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    if-nez v1, :cond_3

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    .line 9
    :cond_3
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->g:Z

    if-eqz v0, :cond_4

    .line 10
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p2

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->d:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 13
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_5

    .line 14
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftMirrorPoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    if-eqz p3, :cond_6

    .line 17
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u91c7\u96c6\u7b2c"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u4e2a\u70b9"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    :cond_6
    return p2

    :cond_7
    :goto_2
    if-eqz p3, :cond_8

    const-string p1, "\u8bf7\u5148\u91c7\u96c6\u4e3b\u5929\u7ebf"

    .line 18
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    :cond_8
    return v2
.end method

.method public z(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;FFDZ)Z
    .locals 6

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    const/4 v2, 0x0

    const-wide v3, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v5, v0, v3

    if-lez v5, :cond_5

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    cmpg-double v5, v0, v3

    if-gtz v5, :cond_0

    goto/16 :goto_0

    :cond_0
    float-to-double v0, p2

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v5, v0, v3

    if-gtz v5, :cond_2

    if-eqz p6, :cond_1

    const-string p1, "\u6ca1\u6709\u4ece\u5929\u7ebf\u7684\u4f4d\u7f6e"

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    :cond_1
    return v2

    .line 3
    :cond_2
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->g:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v2, :cond_3

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    move-result-object v2

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    .line 5
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/i/b;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h:Lcn/mucang/android/jiakaoyi/signal/i/a;

    .line 6
    :cond_3
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-direct {v2, p1}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->d:Lcn/mucang/android/jiakaoyi/signal/i/a;

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iput-wide p4, v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->pitch:D

    .line 8
    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    new-instance p4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {p4, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object p4, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 9
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object p5, p4

    check-cast p5, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iput-wide v0, p5, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDistance:D

    .line 10
    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    float-to-double v0, p3

    iput-wide v0, p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDegree:D

    .line 11
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->d:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {p4, p1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    iput-object p4, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->d:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {p4, p1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->main:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    new-instance p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p3, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const/high16 p4, 0x42c80000    # 100.0f

    mul-float p2, p2, p4

    float-to-double p4, p2

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, p4

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double p4, p4, v0

    .line 16
    invoke-virtual {p3, v2, v3, p4, p5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz p6, :cond_4

    const-string p1, "\u91c7\u96c6\u4e3b\u5929\u7ebf"

    .line 17
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    if-eqz p6, :cond_6

    const-string p1, "gps\u5b9a\u4f4d\u5f02\u5e38"

    .line 18
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    :cond_6
    return v2
.end method
