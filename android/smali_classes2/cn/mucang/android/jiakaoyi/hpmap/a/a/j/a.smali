.class public final synthetic Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$b;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/a;->b:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$b;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/a;->b:Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$b;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->q(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;)V

    return-void
.end method
