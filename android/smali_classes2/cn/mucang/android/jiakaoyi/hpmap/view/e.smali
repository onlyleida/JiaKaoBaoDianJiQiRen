.class public final synthetic Lcn/mucang/android/jiakaoyi/hpmap/view/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/m;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/e;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/e;->b:Ljava/util/List;

    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/e;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/e;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/e;->b:Ljava/util/List;

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/e;->c:Z

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->y(Ljava/util/List;Z)V

    return-void
.end method
