.class public final Lcom/tencent/bugly/proguard/ar;
.super Lcom/tencent/bugly/proguard/j;
.source "SourceFile"


# static fields
.field private static i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:J

.field public b:B

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/ar;->i:Ljava/util/Map;

    const-string v1, ""

    .line 2
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/j;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ar;->a:J

    const/4 v0, 0x0

    .line 3
    iput-byte v0, p0, Lcom/tencent/bugly/proguard/ar;->b:B

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ar;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ar;->d:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ar;->e:Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/tencent/bugly/proguard/ar;->f:Ljava/util/Map;

    .line 8
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ar;->h:Ljava/lang/String;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ar;->g:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/h;)V
    .locals 4

    .line 14
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ar;->a:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/h;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ar;->a:J

    .line 15
    iget-byte v0, p0, Lcom/tencent/bugly/proguard/ar;->b:B

    invoke-virtual {p1, v0, v3, v3}, Lcom/tencent/bugly/proguard/h;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/bugly/proguard/ar;->b:B

    const/4 v0, 0x2

    .line 16
    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ar;->c:Ljava/lang/String;

    const/4 v0, 0x3

    .line 17
    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ar;->d:Ljava/lang/String;

    const/4 v0, 0x4

    .line 18
    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ar;->e:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/tencent/bugly/proguard/ar;->i:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ar;->f:Ljava/util/Map;

    const/4 v0, 0x6

    .line 20
    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ar;->h:Ljava/lang/String;

    const/4 v0, 0x7

    .line 21
    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/h;->a(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/ar;->g:Z

    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/i;)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ar;->a:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(JI)V

    .line 2
    iget-byte v0, p0, Lcom/tencent/bugly/proguard/ar;->b:B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(BI)V

    .line 3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ar;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ar;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ar;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ar;->f:Ljava/util/Map;

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;I)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ar;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    .line 13
    :cond_4
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ar;->g:Z

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(ZI)V

    return-void
.end method
