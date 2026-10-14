.class final Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$viewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$viewModel$2;->this$0:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/m0;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$viewModel$2;->this$0:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;

    invoke-direct {v0, v1}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v1, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$viewModel$2;->invoke()Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    move-result-object v0

    return-object v0
.end method
