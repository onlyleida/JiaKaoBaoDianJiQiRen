.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryRecordList;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryRecordList;Ljava/util/concurrent/CountDownLatch;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/n;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryRecordList;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/n;->b:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/n;->c:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/n;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryRecordList;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/n;->b:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/n;->c:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/s$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryRecordList;Ljava/util/concurrent/CountDownLatch;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    return-void
.end method
