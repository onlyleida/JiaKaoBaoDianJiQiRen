.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/c;


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/e;->a:Landroid/util/SparseArray;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/e;->b:Ljava/util/Map;

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_ZhuangKao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_DanBian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_QiDianQuYu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_ZhiXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    sget-object v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_BianDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v8, 0x5

    invoke-virtual {v0, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    sget-object v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_LuKouZuoZhuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v9, 0x6

    invoke-virtual {v0, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    sget-object v9, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_LuKouYouZhuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v10, 0x7

    invoke-virtual {v0, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_LuKouZhiXing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/16 v11, 0x8

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_BanMaXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/16 v12, 0x9

    invoke-virtual {v0, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    sget-object v12, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_DiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/16 v13, 0xa

    invoke-virtual {v0, v13, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    sget-object v13, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_TingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/16 v14, 0xb

    invoke-virtual {v0, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    sget-object v14, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_JiaJianDang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/16 v15, 0xc

    invoke-virtual {v0, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    sget-object v15, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_ChangDi:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-object/from16 v16, v14

    const/16 v14, 0xd

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$drawable;->moto_zhuangkao:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$drawable;->k2_caiji_shangpo:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$drawable;->k2_caiji_danbian:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$drawable;->k2_caiji_qidian:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$drawable;->moto_k3:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a<",
            "*>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_ZhuangKao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v1, p1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v1, p1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoDanBianSrcData;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_DanBian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v1, p1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoQiDianSrcData;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_QiDianQuYu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v1, p1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhiXianSrcData;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_ZhiXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v1, p1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBianDaoSrcData;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_BianDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v1, p1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZuoZhuanSrcData;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_LuKouZuoZhuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v1, p1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoYouZhuanSrcData;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_LuKouYouZhuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v1, p1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhiXingSrcData;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_LuKouZhiXing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v1, p1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_BanMaXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v1, p1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoDiaoTouSrcData;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_DiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v1, p1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoTingCheSrcData;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_TingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v1, p1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoJiaJianDangSrcData;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_JiaJianDang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v1, p1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoChangDiSrcData;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_ChangDi:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v1, p1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public b(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/e;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-object p1
.end method

.method public c(Lcn/mucang/android/jiakaoyi/engine/model/Step;)I
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)I
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/e;->a:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;->stepId()I

    move-result p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;",
            ">;>;)",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_ZhuangKao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;

    const-class v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;

    invoke-direct {v2, p1, v3, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;

    const-class v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;

    invoke-direct {v2, p1, v3, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_DanBian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;

    const-class v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoDanBianSrcData;

    invoke-direct {v2, p1, v3, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_QiDianQuYu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;

    const-class v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoQiDianSrcData;

    invoke-direct {v2, p1, v3, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_ZhiXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;

    const-class v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhiXianSrcData;

    invoke-direct {v2, p1, v3, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_BianDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;

    const-class v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBianDaoSrcData;

    invoke-direct {v2, p1, v3, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_LuKouZuoZhuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;

    const-class v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZuoZhuanSrcData;

    invoke-direct {v2, p1, v3, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_LuKouYouZhuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;

    const-class v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoYouZhuanSrcData;

    invoke-direct {v2, p1, v3, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_LuKouZhiXing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;

    const-class v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhiXingSrcData;

    invoke-direct {v2, p1, v3, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_BanMaXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;

    const-class v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;

    invoke-direct {v2, p1, v3, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_DiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;

    const-class v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoDiaoTouSrcData;

    invoke-direct {v2, p1, v3, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_TingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;

    const-class v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoTingCheSrcData;

    invoke-direct {v2, p1, v3, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_JiaJianDang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;

    const-class v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoJiaJianDangSrcData;

    invoke-direct {v2, p1, v3, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_ChangDi:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;

    const-class v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoChangDiSrcData;

    invoke-direct {v2, p1, v3, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public f(ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/m;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/m;-><init>()V

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/m;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/m;-><init>()V

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/h;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/h;-><init>()V

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/h;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/h;-><init>()V

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/d;-><init>()V

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/d;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/d;-><init>()V

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/g;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/g;-><init>()V

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/g;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/g;-><init>()V

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/k;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/k;-><init>()V

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/k;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/k;-><init>()V

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/b;-><init>()V

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/b;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/b;-><init>()V

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 7
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/n;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/n;-><init>()V

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/n;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/n;-><init>()V

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x7

    if-ne p1, v0, :cond_7

    .line 8
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/j;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/j;-><init>()V

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/j;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/j;-><init>()V

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    .line 9
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/l;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/l;-><init>()V

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/l;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/l;-><init>()V

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    goto :goto_0

    :cond_8
    const/16 v0, 0x9

    if-ne p1, v0, :cond_9

    .line 10
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/a;-><init>()V

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/a;-><init>()V

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    goto :goto_0

    :cond_9
    const/16 v0, 0xa

    if-ne p1, v0, :cond_a

    .line 11
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/e;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/e;-><init>()V

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/e;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/e;-><init>()V

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    goto :goto_0

    :cond_a
    const/16 v0, 0xb

    if-ne p1, v0, :cond_b

    .line 12
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/i;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/i;-><init>()V

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/i;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/i;-><init>()V

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    goto :goto_0

    :cond_b
    const/16 v0, 0xc

    if-ne p1, v0, :cond_c

    .line 13
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/f;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/f;-><init>()V

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/f;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/f;-><init>()V

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    goto :goto_0

    :cond_c
    const/16 v0, 0xd

    if-ne p1, v0, :cond_d

    .line 14
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/c;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/c;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/c;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/c;-><init>()V

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    goto :goto_0

    :cond_d
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public g()[Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/e;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    :goto_0
    sget-object v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/e;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 3
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
