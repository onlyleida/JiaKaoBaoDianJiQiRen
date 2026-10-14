.class final Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog$onCreateView$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->C(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/p<",
        "Ljava/lang/Long;",
        "Ljava/lang/String;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "gpsBaseId",
        "",
        "gpsBaseName",
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
.field final synthetic $viewBinding:Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog$onCreateView$3$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog$onCreateView$3$1;->$viewBinding:Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog$onCreateView$3$1;->invoke(JLjava/lang/String;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(JLjava/lang/String;)V
    .locals 1

    const-string v0, "gpsBaseName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog$onCreateView$3$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->r(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Ljava/lang/Long;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog$onCreateView$3$1;->$viewBinding:Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->gpsBase:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
