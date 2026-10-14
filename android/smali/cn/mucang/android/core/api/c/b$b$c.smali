.class Lcn/mucang/android/core/api/c/b$b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/api/c/b$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/api/c/b$b;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/api/c/b$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/c/b$b$c;->a:Lcn/mucang/android/core/api/c/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/core/api/c/b$b$c;->a:Lcn/mucang/android/core/api/c/b$b;

    iget-object v0, v0, Lcn/mucang/android/core/api/c/b$b;->a:Lcn/mucang/android/core/api/c/a;

    invoke-interface {v0}, Lcn/mucang/android/core/api/c/a;->d()V
    :try_end_0
    .catch Lcn/mucang/android/core/api/exception/WeakRefLostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "\u9ed8\u8ba4\u66ff\u6362"

    .line 2
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
