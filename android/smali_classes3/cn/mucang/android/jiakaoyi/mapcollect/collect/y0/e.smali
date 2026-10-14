.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/j;

.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Z

.field public final synthetic d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

.field public final synthetic e:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/j;Landroid/widget/EditText;ZLcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/e;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/j;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/e;->b:Landroid/widget/EditText;

    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/e;->c:Z

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/e;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/e;->e:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/e;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/j;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/e;->b:Landroid/widget/EditText;

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/e;->c:Z

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/e;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/e;->e:Landroid/app/Dialog;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/j;->c(Landroid/widget/EditText;ZLcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
