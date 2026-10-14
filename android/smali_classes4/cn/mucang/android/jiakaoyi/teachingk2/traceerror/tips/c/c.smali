.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/c;
.super Ljava/lang/Object;
.source "TraceCorrectTrigger.java"


# direct methods
.method public static a(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/d;)Z
    .locals 1
    .param p0, "_this"    # Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/d;

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->g()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->f()Z

    move-result v0

    return v0
.end method

.method public static b(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/d;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V
    .locals 6
    .param p0, "_this"    # Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/d;->enable()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p7

    move-object v4, p8

    move-object v5, p9

    .line 2
    invoke-interface/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/d;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V

    return-void
.end method
