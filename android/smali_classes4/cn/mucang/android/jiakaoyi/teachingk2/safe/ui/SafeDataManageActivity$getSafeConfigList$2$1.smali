.class final Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$getSafeConfigList$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->x()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Landroid/widget/ImageView;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/widget/ImageView;"
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$getSafeConfigList$2$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$getSafeConfigList$2$1;->invoke(Landroid/widget/ImageView;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Landroid/widget/ImageView;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$getSafeConfigList$2$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->RingRadar:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->j(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Landroid/widget/ImageView;)V

    return-void
.end method
