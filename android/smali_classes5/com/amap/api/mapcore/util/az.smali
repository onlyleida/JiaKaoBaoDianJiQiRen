.class public Lcom/amap/api/mapcore/util/az;
.super Lcom/amap/api/maps/offlinemap/OfflineMapCity;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore/util/k0;
.implements Lcom/amap/api/mapcore/util/b1;


# static fields
.field public static final o:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/mapcore/util/az;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final f:Lcom/amap/api/mapcore/util/f1;

.field public final g:Lcom/amap/api/mapcore/util/f1;

.field public final h:Lcom/amap/api/mapcore/util/f1;

.field public final i:Lcom/amap/api/mapcore/util/f1;

.field public final j:Lcom/amap/api/mapcore/util/f1;

.field public final k:Lcom/amap/api/mapcore/util/f1;

.field public final l:Lcom/amap/api/mapcore/util/f1;

.field public final m:Lcom/amap/api/mapcore/util/f1;

.field public final n:Lcom/amap/api/mapcore/util/f1;

.field public final p:Lcom/amap/api/mapcore/util/f1;

.field public final q:Lcom/amap/api/mapcore/util/f1;

.field r:Lcom/amap/api/mapcore/util/f1;

.field s:Landroid/content/Context;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field v:Z

.field private w:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/az$b;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/az$b;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/az;->o:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 13
    invoke-direct {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;-><init>()V

    .line 14
    new-instance v0, Lcom/amap/api/mapcore/util/h1;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/h1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->f:Lcom/amap/api/mapcore/util/f1;

    .line 15
    new-instance v0, Lcom/amap/api/mapcore/util/o1;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/o1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->g:Lcom/amap/api/mapcore/util/f1;

    .line 16
    new-instance v0, Lcom/amap/api/mapcore/util/k1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/k1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->h:Lcom/amap/api/mapcore/util/f1;

    .line 17
    new-instance v0, Lcom/amap/api/mapcore/util/m1;

    const/4 v2, 0x3

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/util/m1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->i:Lcom/amap/api/mapcore/util/f1;

    .line 18
    new-instance v0, Lcom/amap/api/mapcore/util/n1;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/util/n1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->j:Lcom/amap/api/mapcore/util/f1;

    .line 19
    new-instance v0, Lcom/amap/api/mapcore/util/g1;

    const/4 v2, 0x4

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/util/g1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->k:Lcom/amap/api/mapcore/util/f1;

    .line 20
    new-instance v0, Lcom/amap/api/mapcore/util/l1;

    const/4 v2, 0x7

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/util/l1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->l:Lcom/amap/api/mapcore/util/f1;

    .line 21
    new-instance v0, Lcom/amap/api/mapcore/util/i1;

    const/4 v2, -0x1

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/util/i1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->m:Lcom/amap/api/mapcore/util/f1;

    .line 22
    new-instance v0, Lcom/amap/api/mapcore/util/i1;

    const/16 v2, 0x65

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/util/i1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->n:Lcom/amap/api/mapcore/util/f1;

    .line 23
    new-instance v0, Lcom/amap/api/mapcore/util/i1;

    const/16 v2, 0x66

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/util/i1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->p:Lcom/amap/api/mapcore/util/f1;

    .line 24
    new-instance v0, Lcom/amap/api/mapcore/util/i1;

    const/16 v2, 0x67

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/util/i1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->q:Lcom/amap/api/mapcore/util/f1;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->t:Ljava/lang/String;

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->u:Ljava/lang/String;

    .line 27
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/az;->v:Z

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/az;->w:J

    .line 29
    iput-object p1, p0, Lcom/amap/api/mapcore/util/az;->s:Landroid/content/Context;

    .line 30
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/az;->q(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/az;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/City;->setCity(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setUrl(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setState(I)V

    .line 5
    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    .line 6
    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/City;->getAdcode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/City;->setAdcode(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setVersion(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setSize(J)V

    .line 9
    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/City;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/City;->setCode(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/City;->getJianpin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/City;->setJianpin(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/City;->setPinyin(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/az;->G()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 31
    invoke-direct {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;-><init>(Landroid/os/Parcel;)V

    .line 32
    new-instance v0, Lcom/amap/api/mapcore/util/h1;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/h1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->f:Lcom/amap/api/mapcore/util/f1;

    .line 33
    new-instance v0, Lcom/amap/api/mapcore/util/o1;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/o1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->g:Lcom/amap/api/mapcore/util/f1;

    .line 34
    new-instance v0, Lcom/amap/api/mapcore/util/k1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/k1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->h:Lcom/amap/api/mapcore/util/f1;

    .line 35
    new-instance v0, Lcom/amap/api/mapcore/util/m1;

    const/4 v2, 0x3

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/util/m1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->i:Lcom/amap/api/mapcore/util/f1;

    .line 36
    new-instance v0, Lcom/amap/api/mapcore/util/n1;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/util/n1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->j:Lcom/amap/api/mapcore/util/f1;

    .line 37
    new-instance v0, Lcom/amap/api/mapcore/util/g1;

    const/4 v2, 0x4

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/util/g1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->k:Lcom/amap/api/mapcore/util/f1;

    .line 38
    new-instance v0, Lcom/amap/api/mapcore/util/l1;

    const/4 v2, 0x7

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/util/l1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->l:Lcom/amap/api/mapcore/util/f1;

    .line 39
    new-instance v0, Lcom/amap/api/mapcore/util/i1;

    const/4 v2, -0x1

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/util/i1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->m:Lcom/amap/api/mapcore/util/f1;

    .line 40
    new-instance v0, Lcom/amap/api/mapcore/util/i1;

    const/16 v2, 0x65

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/util/i1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->n:Lcom/amap/api/mapcore/util/f1;

    .line 41
    new-instance v0, Lcom/amap/api/mapcore/util/i1;

    const/16 v2, 0x66

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/util/i1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->p:Lcom/amap/api/mapcore/util/f1;

    .line 42
    new-instance v0, Lcom/amap/api/mapcore/util/i1;

    const/16 v2, 0x67

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore/util/i1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->q:Lcom/amap/api/mapcore/util/f1;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->t:Ljava/lang/String;

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->u:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/az;->v:Z

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/az;->w:J

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/az;->u:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/az;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/az;->w:J

    return-wide v0
.end method

.method static synthetic o(Lcom/amap/api/mapcore/util/az;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/api/mapcore/util/az;->w:J

    return-wide p1
.end method

.method private s(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/t0;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/t0;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/amap/api/mapcore/util/z0;->b(Ljava/io/File;)J

    move-result-wide v5

    .line 3
    new-instance v7, Lcom/amap/api/mapcore/util/az$a;

    invoke-direct {v7, p0, p3, p1}, Lcom/amap/api/mapcore/util/az$a;-><init>(Lcom/amap/api/mapcore/util/az;Ljava/lang/String;Ljava/io/File;)V

    const-wide/16 v3, -0x1

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore/util/t0;->b(Ljava/io/File;Ljava/io/File;JJLcom/amap/api/mapcore/util/t0$a;)J

    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/az;->q:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/f1;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/f1;->c(I)V

    return-void
.end method

.method public B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/f1;->b()V

    .line 2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/az;->v:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/j1;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/az;->v:Z

    return-void
.end method

.method public C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/az;->k:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/f1;->j()V

    return-void
.end method

.method public D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c0;->b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/c0;->e(Lcom/amap/api/mapcore/util/az;)V

    :cond_0
    return-void
.end method

.method public E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c0;->b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/c0;->n(Lcom/amap/api/mapcore/util/az;)V

    :cond_0
    return-void
.end method

.method public F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c0;->b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/c0;->w(Lcom/amap/api/mapcore/util/az;)V

    :cond_0
    return-void
.end method

.method protected G()V
    .locals 4

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/c0;->n:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/z0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".zip.tmp"

    if-eqz v1, :cond_0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->t:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->t:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public H()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->t:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/az;->H()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x2e

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()Z
    .locals 8

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/z0;->a()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    mul-double v2, v2, v4

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v6

    mul-long v4, v4, v6

    long-to-double v4, v4

    sub-double/2addr v2, v4

    const/4 v4, 0x0

    cmpg-double v5, v0, v2

    if-gez v5, :cond_0

    :cond_0
    return v4
.end method

.method public K()Lcom/amap/api/mapcore/util/m0;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/f1;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setState(I)V

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/m0;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/az;->s:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/m0;-><init>(Lcom/amap/api/maps/offlinemap/OfflineMapCity;Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/az;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/m0;->m(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vMapFileNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/az;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/z0;->h(Ljava/lang/String;)V

    return-object v0
.end method

.method public a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/az;->w:J

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/az;->g:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "state must be waiting when download onStart"

    .line 3
    invoke-static {v0}, Lcom/amap/api/mapcore/util/z0;->h(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/f1;->g()V

    return-void
.end method

.method public a(J)V
    .locals 7

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6
    iget-wide v2, p0, Lcom/amap/api/mapcore/util/az;->w:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    long-to-int p2, p1

    .line 7
    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result p1

    if-le p2, p1, :cond_0

    .line 8
    invoke-virtual {p0, p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    .line 9
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/az;->w()V

    .line 10
    :cond_0
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/az;->w:J

    :cond_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/az;->j:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    iput-object p1, p0, Lcom/amap/api/mapcore/util/az;->u:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/az;->H()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/az;->I()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/api/mapcore/util/az;->s:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/r3;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/az;->s:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/r3;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 14
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 16
    :cond_2
    invoke-direct {p0, v1, v0, p1}, Lcom/amap/api/mapcore/util/az;->s(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/az;->g()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/az;->h:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "state must be Loading when download onFinish"

    .line 2
    invoke-static {v0}, Lcom/amap/api/mapcore/util/z0;->h(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/f1;->k()V

    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/az;->x()V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Lcom/amap/api/mapcore/util/ca$a;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/az$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/az;->n:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/f1;->e()I

    move-result p1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/az;->q:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/f1;->e()I

    move-result p1

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/az;->p:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/f1;->e()I

    move-result p1

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/az;->h:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/az;->g:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/f1;->c(I)V

    return-void
.end method

.method public f()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/az;->w:J

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/az;->j:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/f1;->g()V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/az;->j:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/az;->m:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/f1;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/f1;->c(I)V

    return-void
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/az;->x()V

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/City;->getAdcode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/az;->H()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/az;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/az;->J()Z

    move-result v0

    return v0
.end method

.method public m(JJ)V
    .locals 2

    const-wide/16 v0, 0x64

    mul-long p3, p3, v0

    .line 1
    div-long/2addr p3, p1

    long-to-int p1, p3

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    .line 4
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/az;->w()V

    :cond_0
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/z0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, ".zip"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->u:Ljava/lang/String;

    return-object v0
.end method

.method public q(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    if-gez p1, :cond_8

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->m:Lcom/amap/api/mapcore/util/f1;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->q:Lcom/amap/api/mapcore/util/f1;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->p:Lcom/amap/api/mapcore/util/f1;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->n:Lcom/amap/api/mapcore/util/f1;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->l:Lcom/amap/api/mapcore/util/f1;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->f:Lcom/amap/api/mapcore/util/f1;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->k:Lcom/amap/api/mapcore/util/f1;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->i:Lcom/amap/api/mapcore/util/f1;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    goto :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->g:Lcom/amap/api/mapcore/util/f1;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    goto :goto_0

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->j:Lcom/amap/api/mapcore/util/f1;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    goto :goto_0

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->h:Lcom/amap/api/mapcore/util/f1;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    goto :goto_0

    .line 12
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->m:Lcom/amap/api/mapcore/util/f1;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    .line 13
    :cond_8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setState(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public r(Lcom/amap/api/mapcore/util/f1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    .line 2
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/f1;->e()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setState(I)V

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/az;->u:Ljava/lang/String;

    return-void
.end method

.method public u(I)Lcom/amap/api/mapcore/util/f1;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/az;->m:Lcom/amap/api/mapcore/util/f1;

    return-object p1

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/az;->q:Lcom/amap/api/mapcore/util/f1;

    return-object p1

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/az;->p:Lcom/amap/api/mapcore/util/f1;

    return-object p1

    .line 4
    :pswitch_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/az;->n:Lcom/amap/api/mapcore/util/f1;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public v()Lcom/amap/api/mapcore/util/f1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    return-object v0
.end method

.method public w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c0;->b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/c0;->s(Lcom/amap/api/mapcore/util/az;)V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lcom/amap/api/mapcore/util/az;->u:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c0;->b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/c0;->z(Lcom/amap/api/mapcore/util/az;)V

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/az;->w()V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CityOperation current State==>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/az;->v()Lcom/amap/api/mapcore/util/f1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/f1;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/z0;->h(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/az;->i:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/f1;->h()V

    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/az;->h:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/f1;->i()V

    goto :goto_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/az;->l:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/az;->m:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/az;->p:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/az;->n:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/az;->q:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/f1;->d(Lcom/amap/api/mapcore/util/f1;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/az;->v()Lcom/amap/api/mapcore/util/f1;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/j1;->a()V

    goto :goto_2

    .line 9
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/f1;->g()V

    goto :goto_2

    .line 10
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/az;->D()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/az;->v:Z

    :goto_2
    return-void
.end method

.method public z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/f1;->i()V

    return-void
.end method
