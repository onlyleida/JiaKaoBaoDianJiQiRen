.class public Lcom/hw/videoprocessor/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hw/videoprocessor/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/hw/videoprocessor/e$a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/Float;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/Integer;

.field private l:Ljava/lang/Integer;

.field private m:Lcom/hw/videoprocessor/g/i;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/hw/videoprocessor/e$b;->o:Z

    .line 3
    iput-object p1, p0, Lcom/hw/videoprocessor/e$b;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/hw/videoprocessor/e$b;)Lcom/hw/videoprocessor/e$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hw/videoprocessor/e$b;->b:Lcom/hw/videoprocessor/e$a;

    return-object p0
.end method

.method static synthetic b(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hw/videoprocessor/e$b;->j:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic c(Lcom/hw/videoprocessor/e$b;)Lcom/hw/videoprocessor/g/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hw/videoprocessor/e$b;->m:Lcom/hw/videoprocessor/g/i;

    return-object p0
.end method

.method static synthetic d(Lcom/hw/videoprocessor/e$b;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hw/videoprocessor/e$b;->j:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic e(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hw/videoprocessor/e$b;->k:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic f(Lcom/hw/videoprocessor/e$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hw/videoprocessor/e$b;->n:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/hw/videoprocessor/e$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hw/videoprocessor/e$b;->o:Z

    return p0
.end method

.method static synthetic h(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hw/videoprocessor/e$b;->l:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic i(Lcom/hw/videoprocessor/e$b;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hw/videoprocessor/e$b;->l:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic j(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hw/videoprocessor/e$b;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic k(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hw/videoprocessor/e$b;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic l(Lcom/hw/videoprocessor/e$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hw/videoprocessor/e$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hw/videoprocessor/e$b;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic n(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hw/videoprocessor/e$b;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic o(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hw/videoprocessor/e$b;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic p(Lcom/hw/videoprocessor/e$b;)Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hw/videoprocessor/e$b;->h:Ljava/lang/Float;

    return-object p0
.end method


# virtual methods
.method public q(Z)Lcom/hw/videoprocessor/e$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/hw/videoprocessor/e$b;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method public r(Ljava/util/List;)Lcom/hw/videoprocessor/e$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;)",
            "Lcom/hw/videoprocessor/e$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hw/videoprocessor/e$b;->n:Ljava/util/List;

    return-object p0
.end method

.method public s(Ljava/lang/String;)Lcom/hw/videoprocessor/e$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/hw/videoprocessor/e$a;

    invoke-direct {v0, p1}, Lcom/hw/videoprocessor/e$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hw/videoprocessor/e$b;->b:Lcom/hw/videoprocessor/e$a;

    return-object p0
.end method

.method public t(Ljava/lang/String;)Lcom/hw/videoprocessor/e$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hw/videoprocessor/e$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public u()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hw/videoprocessor/e$b;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/hw/videoprocessor/e;->a(Landroid/content/Context;Lcom/hw/videoprocessor/e$b;)V

    return-void
.end method

.method public v(F)Lcom/hw/videoprocessor/e$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/hw/videoprocessor/e$b;->h:Ljava/lang/Float;

    return-object p0
.end method
