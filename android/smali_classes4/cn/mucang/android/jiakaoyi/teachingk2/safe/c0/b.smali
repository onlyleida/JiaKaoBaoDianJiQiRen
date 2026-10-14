.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:J

.field private static volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/b;->a:Ljava/util/List;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/c;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/b;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 6

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/b;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    sget-wide v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/b;->b:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 2
    sget-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return p0

    :cond_0
    const/4 v1, 0x1

    .line 3
    :try_start_1
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/a;

    .line 4
    invoke-interface {v3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/a;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x0

    .line 5
    sget-boolean v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/b;->c:Z

    if-eqz v2, :cond_4

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0d\u8ba1\u7b97\u7535\u5b50\u56f4\u680f\u548c\u540e\u6e9c\u5239\u8f66:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/c;

    if-eqz v4, :cond_2

    const-string v3, "\u5728\u96a7\u9053\u533a\u57df"

    goto :goto_0

    :cond_2
    instance-of v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/a;

    if-eqz v3, :cond_3

    const-string v3, "\u77ac\u65f6\u89d2\u5ea6\u53d8\u5316\u5927"

    goto :goto_0

    :cond_3
    const-string v3, "gps\u8d28\u91cf\u4e0d\u597d"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    const-string v3, "SafeTag"

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculate safe error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_4
    :goto_1
    sput-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/b;->c:Z

    .line 9
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    sput-wide v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/b;->b:J

    .line 10
    sget-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/b;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
