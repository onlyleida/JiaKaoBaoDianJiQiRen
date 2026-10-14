.class final Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$init$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Integer;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$init$2$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$init$2$1;->invoke(I)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 4

    add-int/lit8 v0, p1, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$init$2$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->B2HeadType:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$init$2$1$1;

    invoke-direct {v3, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$init$2$1$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;I)V

    invoke-static {v1, v2, v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->c(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V

    return-void
.end method
