.class public final Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectAdapter$LoadMore;",
        "",
        "state",
        "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;",
        "clickListener",
        "Landroid/view/View$OnClickListener;",
        "(Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;Landroid/view/View$OnClickListener;)V",
        "getClickListener",
        "()Landroid/view/View$OnClickListener;",
        "getState",
        "()Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;",
        "setState",
        "(Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V",
        "MapCollectK3_release"
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
.field private a:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

.field private final b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;->b:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final b()Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    return-object v0
.end method

.method public final c(Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    return-void
.end method
