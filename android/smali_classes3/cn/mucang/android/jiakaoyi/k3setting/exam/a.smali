.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/exam/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;


# direct methods
.method public synthetic constructor <init>(ZLcn/mucang/android/jiakaoyi/k3setting/exam/y0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/a;->a:Z

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/a;->b:Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/a;->a:Z

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/a;->b:Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/y0;->g(ZLcn/mucang/android/jiakaoyi/k3setting/exam/y0;Landroid/view/View;)V

    return-void
.end method
