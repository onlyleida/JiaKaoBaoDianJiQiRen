.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/setting/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/base/h;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;

.field public final synthetic c:Lcn/mucang/android/jky/camera/CameraIntent;

.field public final synthetic d:Landroidx/appcompat/widget/d0;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;Lcn/mucang/android/jky/camera/CameraIntent;Landroidx/appcompat/widget/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/e0;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/e0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/e0;->c:Lcn/mucang/android/jky/camera/CameraIntent;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/e0;->d:Landroidx/appcompat/widget/d0;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/e0;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/e0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/e0;->c:Lcn/mucang/android/jky/camera/CameraIntent;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/e0;->d:Landroidx/appcompat/widget/d0;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;->q(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;Lcn/mucang/android/jky/camera/CameraIntent;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
