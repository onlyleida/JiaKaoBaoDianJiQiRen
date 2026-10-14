.class Lcn/mucang/android/core/config/s$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/config/s$b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/config/s$b;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/config/s$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/config/s$b$a;->a:Lcn/mucang/android/core/config/s$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/core/config/s$b$a;->a:Lcn/mucang/android/core/config/s$b;

    invoke-static {}, Lcn/mucang/android/core/config/s$b;->b()Lcn/mucang/android/core/api/cache/c;

    move-result-object v1

    const-string v2, "/api/open/v4/config/get.htm"

    const-class v3, Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/core/config/s$b;->c(Lcn/mucang/android/core/config/s$b;Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->e(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/core/config/s$b$a;->a:Lcn/mucang/android/core/config/s$b;

    invoke-virtual {v1, v0}, Lcn/mucang/android/core/config/s$b;->g(Ljava/util/Map;)V

    .line 4
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/config/s$b$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
