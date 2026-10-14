.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/setting/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/d0;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/LinkedHashMap;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/d0;Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;Ljava/util/List;Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/i0;->a:Landroidx/appcompat/widget/d0;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/i0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/i0;->c:Ljava/util/List;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/i0;->d:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/i0;->a:Landroidx/appcompat/widget/d0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/i0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/i0;->c:Ljava/util/List;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/i0;->d:Ljava/util/LinkedHashMap;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;->r(Landroidx/appcompat/widget/d0;Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;Ljava/util/List;Ljava/util/LinkedHashMap;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
