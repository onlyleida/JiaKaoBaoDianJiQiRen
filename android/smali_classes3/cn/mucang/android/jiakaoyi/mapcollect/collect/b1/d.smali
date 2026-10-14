.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d$b;
    }
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/e;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/e;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/c;

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/b;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/c;

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/a;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/c;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;-><init>()V

    return-void
.end method

.method public static c()Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d$b;->a()Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)Ljava/util/Map;
    .locals 1
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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/c;

    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/c;->e(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public b(ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/c;

    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/c;->f(ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/c;

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/c;->d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)I

    move-result p1

    return p1
.end method

.method public e(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/c;

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/c;->b(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object p1

    return-object p1
.end method

.method public f()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/c;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/c;->g()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcn/mucang/android/jiakaoyi/engine/model/Step;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/c;

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/c;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;)I

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/c;

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
