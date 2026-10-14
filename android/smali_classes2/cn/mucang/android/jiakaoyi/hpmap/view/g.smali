.class public final synthetic Lcn/mucang/android/jiakaoyi/hpmap/view/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/m;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/g;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/g;->b:I

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->K(I)V

    return-void
.end method
