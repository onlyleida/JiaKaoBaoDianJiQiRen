.class final Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$init$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$init$2$1;->invoke(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
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
.field final synthetic $it:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;I)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$init$2$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$init$2$1$1;->$it:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$init$2$1$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$init$2$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->typeTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$init$2$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$init$2$1$1;->$it:I

    invoke-static {v1, v2}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
