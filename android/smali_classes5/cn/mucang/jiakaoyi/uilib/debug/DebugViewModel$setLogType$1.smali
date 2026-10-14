.class public final Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel$setLogType$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/log/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->n(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/debug/DebugViewModel$setLogType$1",
        "Lcn/mucang/android/jiakaoyi/framework/log/LogInput;",
        "onLog",
        "",
        "text",
        "",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

.field final synthetic b:Lkotlin/jvm/internal/Ref$LongRef;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel$setLogType$1;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel$setLogType$1;->b:Lkotlin/jvm/internal/Ref$LongRef;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 11

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel$setLogType$1;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->e(Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel$setLogType$1;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->e(Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    const/16 v2, 0x1f40

    if-le v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel$setLogType$1;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel$setLogType$1;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    invoke-static {v3}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->e(Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel$setLogType$1;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    invoke-static {v4}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->e(Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v2}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->f(Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;Ljava/util/ArrayList;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel$setLogType$1;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->c(Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel$setLogType$1;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->a(Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel$setLogType$1;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->a(Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v0, v2, v3, v4}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel$setLogType$1;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    invoke-static {v0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel$setLogType$1$onLog$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel$setLogType$1;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    invoke-direct {v8, v0, p1, v4}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel$setLogType$1$onLog$1;-><init>(Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;Ljava/lang/String;Lkotlin/coroutines/c;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 6
    :cond_1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel$setLogType$1;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->d(Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v1, 0x64

    .line 7
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel$setLogType$1;->b:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v4, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sub-long/2addr v2, v4

    int-to-long v0, v1

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 9
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel$setLogType$1;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->m()V

    :cond_3
    return-void
.end method
