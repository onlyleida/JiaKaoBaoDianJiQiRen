.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/collect/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c;->b:I

    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->d(ILandroid/view/View;)V

    return-void
.end method
