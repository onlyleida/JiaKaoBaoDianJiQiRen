.class public Lcn/mucang/android/jiakaoyi/teachingk2/res/o/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;J)V
    .locals 1

    .line 1
    invoke-static {p2, p3}, Lcn/mucang/jiakaoyi/uilib/q/h;->e(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;-><init>()V

    .line 3
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->loadData(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->n(Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;)V

    return-void
.end method
