.class final Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/ErrorFragment$onCreateView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/ErrorFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;"
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/ErrorFragment;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/ErrorFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/ErrorFragment$onCreateView$2;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/ErrorFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/ErrorFragment$onCreateView$2;->invoke(Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/ErrorFragment$onCreateView$2;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/ErrorFragment;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/ErrorFragment;->v(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/ErrorFragment;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->a()V

    :cond_0
    return-void
.end method
