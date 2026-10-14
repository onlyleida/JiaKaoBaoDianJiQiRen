.class Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/f/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOneError(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/record/e;->a(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/f/b;

    .line 3
    invoke-interface {v1, p1}, Lcn/mucang/android/jiakaoyi/engine/f/b;->onOneError(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/record/e;->a:Lcn/mucang/jiakaoyi/uilib/record/e;

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/record/e;->h(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/f/b;

    .line 3
    invoke-interface {v1, p1}, Lcn/mucang/android/jiakaoyi/engine/f/b;->onResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V

    goto :goto_0

    :cond_0
    return-void
.end method
