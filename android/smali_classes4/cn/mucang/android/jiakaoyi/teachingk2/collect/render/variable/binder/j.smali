.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/base/h;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/q;

.field public final synthetic d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/e;

.field public final synthetic e:Landroidx/appcompat/widget/d0;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/h;Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/q;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/e;Landroidx/appcompat/widget/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/j;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/j;->b:Ljava/util/List;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/j;->c:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/q;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/j;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/e;

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/j;->e:Landroidx/appcompat/widget/d0;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/j;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/j;->b:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/j;->c:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/q;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/j;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/e;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/j;->e:Landroidx/appcompat/widget/d0;

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-wide v8, p4

    invoke-static/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/q;->s(Lcn/mucang/android/jiakaoyi/framework/base/h;Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/q;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/e;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
