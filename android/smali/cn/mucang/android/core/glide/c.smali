.class public Lcn/mucang/android/core/glide/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/glide/c$c;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/glide/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:Landroid/os/Handler;

.field private static c:Lokhttp3/OkHttpClient;

.field private static final d:Lcn/mucang/android/core/glide/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/core/glide/c;->a:Ljava/util/Map;

    .line 2
    new-instance v0, Lcn/mucang/android/core/glide/c$c;

    invoke-direct {v0}, Lcn/mucang/android/core/glide/c$c;-><init>()V

    sput-object v0, Lcn/mucang/android/core/glide/c;->b:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcn/mucang/android/core/glide/c$b;

    invoke-direct {v0}, Lcn/mucang/android/core/glide/c$b;-><init>()V

    sput-object v0, Lcn/mucang/android/core/glide/c;->d:Lcn/mucang/android/core/glide/b;

    return-void
.end method

.method static synthetic a()Lcn/mucang/android/core/glide/b;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/glide/c;->d:Lcn/mucang/android/core/glide/b;

    return-object v0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/glide/c;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/glide/c;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static d()Lokhttp3/OkHttpClient;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/core/glide/c;->c:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/http/a;->r()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/core/glide/c$a;

    invoke-direct {v1}, Lcn/mucang/android/core/glide/c$a;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/core/glide/c;->c:Lokhttp3/OkHttpClient;

    .line 5
    :cond_0
    sget-object v0, Lcn/mucang/android/core/glide/c;->c:Lokhttp3/OkHttpClient;

    return-object v0
.end method
