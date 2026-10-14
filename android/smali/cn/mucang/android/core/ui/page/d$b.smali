.class Lcn/mucang/android/core/ui/page/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/ui/page/d;->x(Lcn/mucang/android/core/ui/page/PageHistory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/ui/page/PageHistory;

.field final synthetic b:Lcn/mucang/android/core/ui/page/d;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/ui/page/d;Lcn/mucang/android/core/ui/page/PageHistory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/ui/page/d$b;->b:Lcn/mucang/android/core/ui/page/d;

    iput-object p2, p0, Lcn/mucang/android/core/ui/page/d$b;->a:Lcn/mucang/android/core/ui/page/PageHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d$b;->b:Lcn/mucang/android/core/ui/page/d;

    iget-object v1, p0, Lcn/mucang/android/core/ui/page/d$b;->a:Lcn/mucang/android/core/ui/page/PageHistory;

    invoke-static {v0, v1}, Lcn/mucang/android/core/ui/page/d;->d(Lcn/mucang/android/core/ui/page/d;Lcn/mucang/android/core/ui/page/PageHistory;)V

    return-void
.end method
