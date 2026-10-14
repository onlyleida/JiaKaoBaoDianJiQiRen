.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/d;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/SelectLineBinder;

.field public final synthetic d:Lcn/mucang/android/jiakaoyi/framework/base/h;

.field public final synthetic e:Landroidx/appcompat/widget/d0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/d;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/SelectLineBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroidx/appcompat/widget/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/e;->a:Ljava/util/List;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/e;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/d;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/e;->c:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/SelectLineBinder;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/e;->d:Lcn/mucang/android/jiakaoyi/framework/base/h;

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/e;->e:Landroidx/appcompat/widget/d0;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/e;->a:Ljava/util/List;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/e;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/d;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/e;->c:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/SelectLineBinder;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/e;->d:Lcn/mucang/android/jiakaoyi/framework/base/h;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/e;->e:Landroidx/appcompat/widget/d0;

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-wide v8, p4

    invoke-static/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/SelectLineBinder;->q(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/d;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/SelectLineBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
