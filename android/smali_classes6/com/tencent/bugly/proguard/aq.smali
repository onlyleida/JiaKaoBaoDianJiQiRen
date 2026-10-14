.class public final Lcom/tencent/bugly/proguard/aq;
.super Lcom/tencent/bugly/proguard/j;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static m:Lcom/tencent/bugly/proguard/ap;

.field private static n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static synthetic o:Z


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/tencent/bugly/proguard/ap;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:J

.field public i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/bugly/proguard/aq;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/proguard/aq;->o:Z

    .line 2
    new-instance v0, Lcom/tencent/bugly/proguard/ap;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/aq;->m:Lcom/tencent/bugly/proguard/ap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/aq;->n:Ljava/util/Map;

    const-string v1, ""

    .line 4
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/j;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/aq;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/aq;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/aq;->c:Z

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/tencent/bugly/proguard/aq;->d:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/tencent/bugly/proguard/aq;->e:Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/tencent/bugly/proguard/aq;->f:Lcom/tencent/bugly/proguard/ap;

    .line 8
    iput-object v1, p0, Lcom/tencent/bugly/proguard/aq;->g:Ljava/util/Map;

    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/aq;->h:J

    .line 10
    iput-object v0, p0, Lcom/tencent/bugly/proguard/aq;->j:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/tencent/bugly/proguard/aq;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/tencent/bugly/proguard/aq;->l:I

    .line 13
    iput v0, p0, Lcom/tencent/bugly/proguard/aq;->i:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/h;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/h;->a(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/bugly/proguard/aq;->a:Z

    .line 20
    invoke-virtual {p1, v1, v1}, Lcom/tencent/bugly/proguard/h;->a(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/bugly/proguard/aq;->b:Z

    const/4 v2, 0x2

    .line 21
    invoke-virtual {p1, v2, v1}, Lcom/tencent/bugly/proguard/h;->a(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/aq;->c:Z

    const/4 v1, 0x3

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/aq;->d:Ljava/lang/String;

    const/4 v1, 0x4

    .line 23
    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/aq;->e:Ljava/lang/String;

    .line 24
    sget-object v1, Lcom/tencent/bugly/proguard/aq;->m:Lcom/tencent/bugly/proguard/ap;

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/j;IZ)Lcom/tencent/bugly/proguard/j;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/ap;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/aq;->f:Lcom/tencent/bugly/proguard/ap;

    .line 25
    sget-object v1, Lcom/tencent/bugly/proguard/aq;->n:Ljava/util/Map;

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/aq;->g:Ljava/util/Map;

    .line 26
    iget-wide v1, p0, Lcom/tencent/bugly/proguard/aq;->h:J

    const/4 v3, 0x7

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/tencent/bugly/proguard/h;->a(JIZ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/aq;->h:J

    const/16 v1, 0x8

    .line 27
    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/aq;->j:Ljava/lang/String;

    const/16 v1, 0x9

    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/aq;->k:Ljava/lang/String;

    .line 29
    iget v1, p0, Lcom/tencent/bugly/proguard/aq;->l:I

    const/16 v2, 0xa

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v1

    iput v1, p0, Lcom/tencent/bugly/proguard/aq;->l:I

    .line 30
    iget v1, p0, Lcom/tencent/bugly/proguard/aq;->i:I

    const/16 v2, 0xb

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result p1

    iput p1, p0, Lcom/tencent/bugly/proguard/aq;->i:I

    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/i;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/aq;->a:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(ZI)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/aq;->b:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(ZI)V

    .line 3
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/aq;->c:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(ZI)V

    .line 4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aq;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aq;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aq;->f:Lcom/tencent/bugly/proguard/ap;

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/j;I)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aq;->g:Ljava/util/Map;

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;I)V

    .line 12
    :cond_3
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/aq;->h:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(JI)V

    .line 13
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aq;->j:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aq;->k:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/16 v1, 0x9

    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    .line 17
    :cond_5
    iget v0, p0, Lcom/tencent/bugly/proguard/aq;->l:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(II)V

    .line 18
    iget v0, p0, Lcom/tencent/bugly/proguard/aq;->i:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(II)V

    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 2

    .line 31
    new-instance v0, Lcom/tencent/bugly/proguard/z;

    invoke-direct {v0, p1, p2}, Lcom/tencent/bugly/proguard/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 32
    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/aq;->a:Z

    const-string p2, "enable"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    .line 33
    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/aq;->b:Z

    const-string p2, "enableUserInfo"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    .line 34
    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/aq;->c:Z

    const-string p2, "enableQuery"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    .line 35
    iget-object p1, p0, Lcom/tencent/bugly/proguard/aq;->d:Ljava/lang/String;

    const-string p2, "url"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    .line 36
    iget-object p1, p0, Lcom/tencent/bugly/proguard/aq;->e:Ljava/lang/String;

    const-string p2, "expUrl"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    .line 37
    iget-object p1, p0, Lcom/tencent/bugly/proguard/aq;->f:Lcom/tencent/bugly/proguard/ap;

    const-string p2, "security"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Lcom/tencent/bugly/proguard/j;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    .line 38
    iget-object p1, p0, Lcom/tencent/bugly/proguard/aq;->g:Ljava/util/Map;

    const-string p2, "valueMap"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    .line 39
    iget-wide p1, p0, Lcom/tencent/bugly/proguard/aq;->h:J

    const-string v1, "strategylastUpdateTime"

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/bugly/proguard/z;->a(JLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    .line 40
    iget-object p1, p0, Lcom/tencent/bugly/proguard/aq;->j:Ljava/lang/String;

    const-string p2, "httpsUrl"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    .line 41
    iget-object p1, p0, Lcom/tencent/bugly/proguard/aq;->k:Ljava/lang/String;

    const-string p2, "httpsExpUrl"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    .line 42
    iget p1, p0, Lcom/tencent/bugly/proguard/aq;->l:I

    const-string p2, "eventRecordCount"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(ILjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    .line 43
    iget p1, p0, Lcom/tencent/bugly/proguard/aq;->i:I

    const-string p2, "eventTimeInterval"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(ILjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-boolean v0, Lcom/tencent/bugly/proguard/aq;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    check-cast p1, Lcom/tencent/bugly/proguard/aq;

    .line 2
    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/aq;->a:Z

    iget-boolean v2, p1, Lcom/tencent/bugly/proguard/aq;->a:Z

    .line 3
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/aq;->b:Z

    iget-boolean v2, p1, Lcom/tencent/bugly/proguard/aq;->b:Z

    .line 4
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/aq;->c:Z

    iget-boolean v2, p1, Lcom/tencent/bugly/proguard/aq;->c:Z

    .line 5
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/bugly/proguard/aq;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/aq;->d:Ljava/lang/String;

    .line 6
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/bugly/proguard/aq;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/aq;->e:Ljava/lang/String;

    .line 7
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/bugly/proguard/aq;->f:Lcom/tencent/bugly/proguard/ap;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/aq;->f:Lcom/tencent/bugly/proguard/ap;

    .line 8
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/bugly/proguard/aq;->g:Ljava/util/Map;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/aq;->g:Ljava/util/Map;

    .line 9
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/aq;->h:J

    iget-wide v3, p1, Lcom/tencent/bugly/proguard/aq;->h:J

    .line 10
    invoke-static {v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/k;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/bugly/proguard/aq;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/aq;->j:Ljava/lang/String;

    .line 11
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/bugly/proguard/aq;->k:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/aq;->k:Ljava/lang/String;

    .line 12
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/tencent/bugly/proguard/aq;->l:I

    iget v2, p1, Lcom/tencent/bugly/proguard/aq;->l:I

    .line 13
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/tencent/bugly/proguard/aq;->i:I

    iget p1, p1, Lcom/tencent/bugly/proguard/aq;->i:I

    .line 14
    invoke-static {v1, p1}, Lcom/tencent/bugly/proguard/k;->a(II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method
