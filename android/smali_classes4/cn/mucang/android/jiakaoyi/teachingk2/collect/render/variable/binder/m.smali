.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/base/h;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroidx/appcompat/widget/d0;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/h;Ljava/util/List;Landroidx/appcompat/widget/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/m;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/m;->b:Ljava/util/List;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/m;->c:Landroidx/appcompat/widget/d0;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/m;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/m;->b:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/m;->c:Landroidx/appcompat/widget/d0;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/q;->v(Lcn/mucang/android/jiakaoyi/framework/base/h;Ljava/util/List;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
