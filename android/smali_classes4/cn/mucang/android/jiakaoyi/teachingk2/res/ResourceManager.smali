.class public Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;,
        Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;,
        Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$c;,
        Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;
    }
.end annotation


# static fields
.field private static a:F

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->b:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->c:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->d:Ljava/util/Map;

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->Teaching:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/k;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/k;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->MapData:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/h;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/h;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->MapFence:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/c;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/c;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->Unity:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/m;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/m;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->Special:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/j;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/j;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->Gps:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/d;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->TileMap:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/l;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/l;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->MapDataK3:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/g;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/g;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->MapDataB2:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/f;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/f;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->AreaK2:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/a;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/a;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->AreaK3:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/a;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/a;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->Language:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/e;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->AutoShuttle:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/b;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/b;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->PoDingArea:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/i;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/i;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->c(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;F)V

    return-void
.end method

.method private static b(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/f;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static c(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;F)V
    .locals 2

    .line 1
    sput p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->a:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    .line 2
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->a:F

    :cond_0
    if-eqz p0, :cond_1

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/g;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;F)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private static d(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;Ljava/lang/String;Z)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->Teaching:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->MapData:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->MapDataB2:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->Unity:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    if-ne p0, v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 3
    :cond_1
    invoke-static {p1, p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->b(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
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

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static declared-synchronized f(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;J)Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;
    .locals 2

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->g(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;J)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->c:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 3
    invoke-static {p0, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;-><init>()V

    const/4 v1, 0x0

    .line 5
    iput v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    const-string v1, "empty"

    .line 6
    iput-object v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->url:Ljava/lang/String;

    const-string v1, ""

    .line 7
    iput-object v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->md5:Ljava/lang/String;

    .line 8
    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return-object p2

    .line 10
    :cond_0
    :try_start_1
    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;

    invoke-static {p2, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;

    .line 11
    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    iget-object p0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->md5:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, ""

    .line 13
    iput-object p0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->md5:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :cond_2
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static g(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;J)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "versionInfo-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->Teaching:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    if-ne p0, p2, :cond_0

    const-wide/16 v2, 0x0

    .line 3
    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/a;->a(J)J

    move-result-wide v2

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static h()F
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->a:F

    return v0
.end method

.method private static i(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->m()V

    return-void
.end method

.method static synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;F)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;->b(F)V

    return-void
.end method

.method private static m()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->b()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->g()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/CarSizeReporter;->d()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;->initSafe()V

    :cond_0
    const-string v0, "\u8d44\u6e90\u52a0\u8f7d\u5b8c\u6210"

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private static n(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;JLcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->g(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;J)Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->c:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u8bbe\u7f6e\u672c\u5730\u7248\u672c:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p3, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static declared-synchronized p(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;Ljava/util/List;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;

    monitor-enter v2

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->d()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 2
    iget-wide v4, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_0

    goto/16 :goto_10

    :cond_0
    const/4 v4, 0x0

    .line 3
    :try_start_1
    new-instance v5, Lcn/mucang/jiakaoyi/uilib/i/g;

    invoke-direct {v5}, Lcn/mucang/jiakaoyi/uilib/i/g;-><init>()V

    iget-wide v8, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v5, v8, v9, v4}, Lcn/mucang/jiakaoyi/uilib/i/g;->q(JZ)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_1

    .line 4
    :try_start_2
    invoke-static {v5}, Lcn/mucang/jiakaoyi/uilib/s/j;->r(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u83b7\u53d6\u5230\u5f53\u524d\u8003\u573a\u4fe1\u606f\uff0c\u5e76\u66f4\u65b0\u5230\u672c\u5730:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v5, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v5

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    move-object v5, v0

    .line 6
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v9, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ":\u83b7\u53d6\u5230\u5f53\u524d\u8003\u573a\u4fe1\u606f\u5931\u8d25:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 7
    :cond_1
    :goto_1
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "secondLan-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->i(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 9
    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/res/voice/a;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/res/voice/a;-><init>()V

    iget-wide v9, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v6, v7}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v11

    invoke-static {v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/a;->a(J)J

    move-result-wide v11

    invoke-virtual {v8, v9, v10, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/res/voice/a;->m(JJ)Ljava/util/List;

    move-result-object v8

    .line 10
    invoke-static {v8}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 11
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/res/voice/TeachVoiceModel;

    .line 13
    invoke-virtual {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/res/voice/TeachVoiceModel;->key()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 14
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v8

    iput-object v9, v8, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->h:Ljava/util/Map;

    .line 15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "teachVoices:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string v8, "secondLan"

    .line 16
    invoke-static {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->e(Ljava/lang/String;)V

    .line 17
    sget-object v8, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->b:Ljava/util/Map;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v5, v0

    .line 18
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v9, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ":\u83b7\u53d6\u5f53\u524d\u8003\u573a\u5728\u7ebf\u6559\u5b66\u8bed\u97f3\u4fe1\u606f\u5931\u8d25:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 19
    :cond_3
    :goto_3
    iget-wide v8, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->longitude:D

    iget-wide v10, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->latitude:D

    invoke-static {v8, v9, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/k;->b(DD)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 20
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v8

    iget-wide v9, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->latitude:D

    iget-wide v11, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->longitude:D

    iget-wide v13, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->altitude:D

    invoke-virtual/range {v8 .. v14}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->i(DDD)V

    goto :goto_4

    .line 21
    :cond_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v15

    iget-wide v8, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLatitude:D

    iget-wide v10, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLongitude:D

    iget-wide v12, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originAltitude:D

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v12

    invoke-virtual/range {v15 .. v21}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->i(DDD)V

    .line 22
    :goto_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/i/b;

    sput-object v5, Lcn/mucang/android/jiakaoyi/unity/activity/UnityMainActivity;->d:Lcn/mucang/android/jiakaoyi/signal/i/b;

    .line 23
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;->m()V

    .line 24
    sget-object v5, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v8, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;->getResourceList()Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x0

    .line 25
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    div-float v10, v11, v10

    .line 26
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const-string v13, "www"

    .line 27
    iget-object v14, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->fileRoot:Ljava/lang/String;

    invoke-static {v13, v14}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static/range {p1 .. p1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v13, p1

    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 29
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v5

    iget-wide v4, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-\u6307\u5b9a\u8d44\u6e90\u5217\u8868\uff0c\u8df3\u8fc7\u66f4\u65b0\uff1a"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->type:I

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    add-float/2addr v8, v10

    .line 30
    invoke-static {v1, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->c(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;F)V

    move-object/from16 v5, v16

    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v13, p1

    :cond_6
    move-object/from16 v16, v5

    .line 31
    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->Teaching:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    if-ne v12, v4, :cond_7

    invoke-static {v6, v7}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/a;->a(J)J

    move-result-wide v4

    cmp-long v14, v4, v6

    if-gtz v14, :cond_7

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-\u6ca1\u6709\u542f\u7528\u6559\u5b66\u65b9\u6848"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    add-float/2addr v8, v10

    .line 33
    invoke-static {v1, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->c(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;F)V

    move-object/from16 v5, v16

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    goto :goto_5

    .line 34
    :cond_7
    iget-wide v4, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v12, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;J)Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;

    move-result-object v4

    .line 35
    iget-object v5, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->fileRoot:Ljava/lang/String;

    iget-wide v6, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget v14, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    iget-object v9, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->url:Ljava/lang/String;

    iget-object v15, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->md5:Ljava/lang/String;

    move-object/from16 v19, v5

    move-wide/from16 v20, v6

    move/from16 v22, v14

    move-object/from16 v23, v9

    move-object/from16 v24, v15

    invoke-static/range {v19 .. v24}, Lcn/mucang/android/jiakaoyi/teachingk2/res/k;->c(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 36
    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->TileMap:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    if-eq v12, v6, :cond_8

    iget v7, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    if-eqz v7, :cond_8

    iget-object v7, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->url:Ljava/lang/String;

    const-string v9, "empty"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_8

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v14, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-\u8d44\u6e90\u52a0\u8f7d\u5f02\u5e38\uff0c\u672c\u5730\u7248\u672c\u5bf9\u5e94\u7684\u6587\u4ef6\u4e0d\u5b58\u5728\uff01\u7c7b\u578b\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->type:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " \u7248\u672c\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " url\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->url:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v5, 0x0

    .line 38
    iput v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    const-string v5, "empty"

    .line 39
    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->url:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 40
    :cond_8
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v6

    iget-wide v5, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-\u8bf7\u6c42\u8d44\u6e90\u66f4\u65b0\uff0c\u7c7b\u578b\uff1a"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->type:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " \u7248\u672c\uff1a"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-ne v12, v9, :cond_c

    .line 41
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 42
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->MapDataB2:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    iget-wide v6, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v5, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;J)Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->md5:Ljava/lang/String;

    goto :goto_6

    .line 43
    :cond_9
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->MapData:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    iget-wide v6, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v5, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;J)Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->md5:Ljava/lang/String;

    .line 44
    :goto_6
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/res/j;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/res/j;-><init>()V

    iget-wide v14, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v6, v14, v15, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/res/j;->n(JLjava/lang/String;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 45
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;-><init>()V

    .line 46
    iget-object v9, v5, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapTileUrl:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->setUrl(Ljava/lang/String;)V

    .line 47
    iget-object v5, v5, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapTileMd5:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->setFileMd5(Ljava/lang/String;)V

    .line 48
    iget v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    if-eqz v5, :cond_a

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->md5:Ljava/lang/String;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getFileMd5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 49
    :cond_a
    iget v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    const/4 v7, 0x1

    add-int/2addr v5, v7

    invoke-virtual {v6, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->setVersion(I)V

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    goto :goto_7

    .line 50
    :cond_c
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/res/j;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/res/j;-><init>()V

    iget-wide v6, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget v9, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->type:I

    iget v15, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    invoke-virtual {v5, v6, v7, v9, v15}, Lcn/mucang/android/jiakaoyi/teachingk2/res/j;->m(JII)Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;

    move-result-object v6

    :cond_d
    :goto_7
    if-eqz v6, :cond_e

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v14, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "-\u670d\u52a1\u5668\u8fd4\u56de\u7ed3\u679c\uff0c\u7c7b\u578b\uff1a"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getType()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " \u7248\u672c\uff1a"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getVersion()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " url\uff1a"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_8

    .line 52
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v14, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "-\u670d\u52a1\u5668\u8fd4\u56de\u7ed3\u679c null"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_8
    const v5, 0x3e4ccccd    # 0.2f

    mul-float v5, v5, v10

    add-float/2addr v5, v8

    .line 53
    invoke-static {v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->c(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;F)V

    if-eqz v6, :cond_12

    .line 54
    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getVersion()I

    move-result v9

    iget v14, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    if-le v9, v14, :cond_12

    .line 55
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v14, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "-\u6709\u65b0\u8d44\u6e90\uff0c\u5f00\u59cb\u4e0b\u8f7d\uff0c\u7c7b\u578b\uff1a"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getType()I

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " \u7248\u672c\uff1a"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getVersion()I

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " url\uff1a"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getUrl()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 56
    iget-object v9, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->fileRoot:Ljava/lang/String;

    iget-wide v14, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getVersion()I

    move-result v22

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getUrl()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getFileMd5()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v19, v9

    move-wide/from16 v20, v14

    invoke-static/range {v19 .. v24}, Lcn/mucang/android/jiakaoyi/teachingk2/res/k;->c(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 57
    :try_start_7
    new-instance v14, Lcn/mucang/android/jiakaoyi/framework/utils/t;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getFileMd5()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v14, v15, v7, v11}, Lcn/mucang/android/jiakaoyi/framework/utils/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$a;

    invoke-direct {v7, v1, v5, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;FF)V

    invoke-virtual {v14, v7}, Lcn/mucang/android/jiakaoyi/framework/utils/t;->d(Lcn/mucang/android/jiakaoyi/framework/utils/s;)Z

    move-result v5

    .line 58
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v7, :cond_12

    if-eqz v5, :cond_12

    .line 59
    :try_start_8
    iget-object v5, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->fileRoot:Ljava/lang/String;

    iget-wide v14, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget v7, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    iget-object v9, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->url:Ljava/lang/String;

    iget-object v11, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->md5:Ljava/lang/String;

    move-object/from16 v25, v5

    move-wide/from16 v26, v14

    move/from16 v28, v7

    move-object/from16 v29, v9

    move-object/from16 v30, v11

    invoke-static/range {v25 .. v30}, Lcn/mucang/android/jiakaoyi/teachingk2/res/k;->c(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 60
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 61
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v14, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-\u5220\u9664\u65e7\u8d44\u6e90\uff0c\u7c7b\u578b\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->type:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " \u7248\u672c\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " url\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->url:Ljava/lang/String;

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v5, v0

    .line 63
    :try_start_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u65e7\u8d44\u6e90\u5220\u9664\u5931\u8d25:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v14, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-\u5220\u9664\u65e7\u8d44\u6e90\u5931\u8d25\uff0c\u7c7b\u578b\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->type:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " \u7248\u672c\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " url\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->url:Ljava/lang/String;

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 65
    :cond_f
    :goto_9
    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getVersion()I

    move-result v5

    iput v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    .line 66
    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->url:Ljava/lang/String;

    .line 67
    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getFileMd5()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->md5:Ljava/lang/String;

    .line 68
    iget-wide v14, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v12, v14, v15, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->n(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;JLcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;)V

    .line 69
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->MapData:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    if-ne v12, v5, :cond_10

    .line 70
    iget-wide v14, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getFileMd5()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v15, v5, v7}, Lcn/mucang/jiakaoyi/uilib/s/j;->u(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;Ljava/lang/String;)V

    .line 71
    iget-wide v14, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getPosMapCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v15, v5, v7}, Lcn/mucang/jiakaoyi/uilib/s/j;->t(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;Ljava/lang/String;)V

    goto :goto_a

    .line 72
    :cond_10
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->MapDataK3:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    if-ne v12, v5, :cond_11

    .line 73
    iget-wide v14, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getFileMd5()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v15, v5, v7}, Lcn/mucang/jiakaoyi/uilib/s/j;->u(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;Ljava/lang/String;)V

    .line 74
    iget-wide v14, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getPosMapCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v15, v5, v7}, Lcn/mucang/jiakaoyi/uilib/s/j;->t(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;Ljava/lang/String;)V

    .line 75
    :cond_11
    :goto_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v14, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-\u8d44\u6e90\u4e0b\u8f7d\u6210\u529f\uff0c\u7c7b\u578b\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getType()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " \u7248\u672c\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getVersion()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " url\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/16 :goto_b

    :catchall_4
    move-exception v0

    move-object v5, v0

    .line 76
    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v14, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "-\u8d44\u6e90\u4e0b\u8f7d\u5931\u8d25\uff0c\u7c7b\u578b\uff1a"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getType()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " \u7248\u672c\uff1a"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getVersion()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " url\uff1a"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " message\uff1a"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u4e0b\u8f7d\u5931\u8d25:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v5, v0

    .line 78
    :try_start_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v14, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-\u8d44\u6e90\u66f4\u65b0\u5f02\u5e38\uff0c\u7c7b\u578b\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " \u7248\u672c\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " message\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string v6, "TAG"

    .line 79
    invoke-virtual {v5}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u66f4\u65b0\u5f02\u5e38:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_12
    :goto_b
    const v5, 0x3f4ccccd    # 0.8f

    mul-float v5, v5, v10

    add-float/2addr v5, v8

    .line 81
    invoke-static {v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->c(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;F)V

    .line 82
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->url:Ljava/lang/String;

    invoke-static {v5}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->url:Ljava/lang/String;

    const-string v6, "empty"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 83
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->l:Landroid/util/SparseArray;

    iget v6, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->type:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->url:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-\u89e3\u6790\u8d44\u6e90\u4e00\u81f4\uff0c\u76f4\u63a5\u8df3\u8fc7\uff0c\u7c7b\u578b\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " \u7248\u672c\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " url\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->url:Ljava/lang/String;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    add-float/2addr v8, v10

    .line 85
    invoke-static {v1, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->c(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;F)V

    :goto_c
    move-object/from16 v5, v16

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_5

    .line 86
    :cond_13
    iget-object v5, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->fileRoot:Ljava/lang/String;

    iget-wide v6, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget v9, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    iget-object v11, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->url:Ljava/lang/String;

    iget-object v14, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->md5:Ljava/lang/String;

    move-object/from16 v25, v5

    move-wide/from16 v26, v6

    move/from16 v28, v9

    move-object/from16 v29, v11

    move-object/from16 v30, v14

    invoke-static/range {v25 .. v30}, Lcn/mucang/android/jiakaoyi/teachingk2/res/k;->c(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 87
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_14

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v14, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-\u672c\u5730\u8d44\u6e90\u4e0d\u5b58\u5728\uff01\u7c7b\u578b\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " \u7248\u672c\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " url\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->url:Ljava/lang/String;

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 89
    :cond_14
    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->d:Ljava/util/Map;

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$c;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    if-eqz v6, :cond_16

    .line 90
    :try_start_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5f00\u59cb\u89e3\u6790"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 91
    iget-wide v14, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-interface {v6, v5, v14, v15}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$c;->a(Ljava/io/File;J)V

    .line 92
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v6

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->l:Landroid/util/SparseArray;

    iget v7, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->type:I

    iget-object v9, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->url:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u89e3\u6790\u5b8c\u6210"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto/16 :goto_e

    :catchall_6
    move-exception v0

    move-object v6, v0

    .line 94
    :try_start_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v14, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "-\u8d44\u6e90\u89e3\u6790\u5f02\u5e38\uff0c\u7c7b\u578b\uff1a"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->type:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " \u7248\u672c\uff1a"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " url\uff1a"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->url:Ljava/lang/String;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " message\uff1a"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u89e3\u6790\u5931\u8d25\uff0c\u6587\u4ef6"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_15

    const-string v7, "\u5b58\u5728\uff0c\u53ef\u80fd\u662f\u6587\u4ef6\u4e0b\u8f7d\u4e0d\u5b8c\u6574\uff0c\u5220\u6389\u540e\u91cd\u8bd5"

    goto :goto_d

    :cond_15
    const-string v7, "\u4e0d\u5b58\u5728"

    :goto_d
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u89e3\u6790\u5931\u8d25:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v12, v1, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->d(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;Ljava/lang/String;Z)Z

    move-result v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    if-eqz v4, :cond_16

    .line 98
    monitor-exit v2

    return-void

    :cond_16
    :goto_e
    const/4 v5, 0x0

    goto :goto_f

    .line 99
    :cond_17
    :try_start_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-\u672c\u5730\u8d44\u6e90\u4e0d\u5b58\u5728\uff0c\u7c7b\u578b\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " \u7248\u672c\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " url\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->url:Ljava/lang/String;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v12, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v12, v1, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->d(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;Ljava/lang/String;Z)Z

    move-result v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    if-eqz v4, :cond_18

    .line 101
    monitor-exit v2

    return-void

    :cond_18
    :goto_f
    add-float/2addr v8, v10

    if-eqz v1, :cond_19

    .line 102
    :try_start_f
    sget v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->a:F

    cmpg-float v6, v8, v4

    if-gez v6, :cond_19

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_19

    const-string v4, "www"

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6765\u4e86\u8001\u5f1f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->a:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const-string v4, "www"

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {v1, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->c(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;F)V

    goto/16 :goto_c

    :cond_1a
    const/high16 v3, 0x3f800000    # 1.0f

    .line 106
    invoke-static {v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->c(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;F)V

    .line 107
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/res/e;

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 108
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;->n()V

    .line 109
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "\u52a0\u8f7d\u5b8c\u6210"

    .line 110
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 111
    :cond_1b
    monitor-exit v2

    return-void

    .line 112
    :cond_1c
    :goto_10
    monitor-exit v2

    return-void

    :catchall_7
    move-exception v0

    move-object v1, v0

    monitor-exit v2

    throw v1
.end method
