.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:I

.field public static final e:I


# instance fields
.field public a:I

.field public b:Z

.field public c:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#5ACBFF"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->d:I

    const-string v0, "#775ACBFF"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->e:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->a:I

    .line 3
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->b:Z

    .line 4
    new-array p1, p1, [Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->c:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;

    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->c:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;

    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;-><init>()V

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;->getRadarRenderConfig()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;-><init>(IZ)V

    return-object v0
.end method

.method public static b()Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;->getRadarRenderConfig()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    const/16 v1, 0xc

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method public c()I
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->a:I

    const/16 v1, 0xdc

    div-int/2addr v1, v0

    return v1
.end method

.method public d(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->c()I

    move-result v0

    mul-int p1, p1, v0

    add-int/lit8 p1, p1, -0x14

    neg-int p1, p1

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->b:Z

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit16 p1, p1, 0xb4

    return p1
.end method
