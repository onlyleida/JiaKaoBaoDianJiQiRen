.class public Lcn/mucang/android/jiakaoyi/mapcollect/c/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 2
    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoDanBianSrcData;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoQiDianSrcData;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhiXianSrcData;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBianDaoSrcData;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZuoZhuanSrcData;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoYouZhuanSrcData;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhiXingSrcData;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoDiaoTouSrcData;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoTingCheSrcData;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoJiaJianDangSrcData;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoChangDiSrcData;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/k$a;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/k$a;->c:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/k$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/k$a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/k$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/k$a;->c:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/k$a;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/k$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/k$a;->c:Ljava/util/List;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/k$a;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    return-void
.end method
