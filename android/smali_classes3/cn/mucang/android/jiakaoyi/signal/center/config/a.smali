.class public Lcn/mucang/android/jiakaoyi/signal/center/config/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;
    }
.end annotation


# static fields
.field private static volatile g:Lcn/mucang/android/jiakaoyi/signal/center/config/a;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;",
            "Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;",
            ">;"
        }
    .end annotation
.end field

.field private final d:[Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
            "Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->b:I

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;->extensions:[Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;

    array-length v0, v0

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->d:[Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;-><init>(Lcn/mucang/android/jiakaoyi/signal/center/config/a$a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->f:Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;->a(Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->a:Ljava/util/Set;

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->f:Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;->b(Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->c:Ljava/util/Map;

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->f:Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;->c(Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->e:Ljava/util/Map;

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->p()V

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->o()V

    return-void
.end method

.method public static h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->g:Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->g:Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;-><init>()V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->g:Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->g:Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    return-object v0
.end method

.method private o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->c:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->d:[Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->id:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;

    aput-object v1, v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 2
    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->b:I

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->id:I

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->h(II)I

    move-result v1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->b:I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;)V
    .locals 4

    monitor-enter p0

    if-nez p2, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->d:[Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->id:I

    aput-object v1, v2, v0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->f:Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;->e(Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;Ljava/util/Map;)V

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d6\u6d88\u6620\u5c04"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->signalName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u4fe1\u53f7\u6269\u5c55 "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;->extensionName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->c:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->signalName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u4fe1\u53f7\u5df2\u7ed1\u5b9a\u6269\u5c55\u53e3\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    const-string v2, ""

    if-eqz v0, :cond_3

    .line 11
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->d:[Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->id:I

    aput-object v1, v3, v0

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->signalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6620\u5c04\u6269\u5c55 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;->extensionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; \u5e76"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->d:[Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;

    iget v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->id:I

    aput-object p1, v0, v1

    .line 16
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->f:Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;->e(Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;Ljava/util/Map;)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u8bbe\u7f6e\u6269\u5c55 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->signalName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u4e3a"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;->extensionName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->b:I

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->id:I

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->g(II)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->b:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->b:I

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->id:I

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->h(II)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->b:I

    .line 6
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->f:Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->a:Ljava/util/Set;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;->d(Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->f:Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;->e(Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;)Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    return-object p1
.end method

.method public declared-synchronized f(Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;)Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->d:[Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->id:I

    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
            "Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->e:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->a:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->d:[Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;

    iget v1, p3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->id:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget p4, v0, Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;->id:I

    invoke-static {p1, p2, p4}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->e(JI)Z

    move-result p4

    .line 3
    :cond_0
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->b:I

    iget p2, p3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->id:I

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result p1

    if-eq p1, p4, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->f:Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;->f(Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;)Z

    move-result v0

    return v0
.end method

.method public final l(Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->d:[Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->id:I

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m(Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->b:I

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->id:I

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized n()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->f:Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;->g(Lcn/mucang/android/jiakaoyi/signal/center/config/a$b;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
