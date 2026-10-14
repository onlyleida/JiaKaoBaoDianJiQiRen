.class Lcn/mucang/android/core/api/cache/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/api/cache/b;->doFetchRemote(Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;Ljava/lang/String;Z)Lcn/mucang/android/core/api/ApiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/api/cache/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/mucang/android/core/api/cache/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/api/cache/b;Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;Lcn/mucang/android/core/api/cache/a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcn/mucang/android/core/api/cache/b$b;->a:Lcn/mucang/android/core/api/cache/c;

    iput-object p3, p0, Lcn/mucang/android/core/api/cache/b$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/android/core/api/cache/b$b;->c:Lcn/mucang/android/core/api/cache/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/b$b;->a:Lcn/mucang/android/core/api/cache/c;

    iget-object v1, p0, Lcn/mucang/android/core/api/cache/b$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/core/api/cache/b$b;->c:Lcn/mucang/android/core/api/cache/a;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/api/cache/c;->r(Ljava/lang/String;Lcn/mucang/android/core/api/cache/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "\u9ed8\u8ba4\u66ff\u6362"

    .line 2
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
