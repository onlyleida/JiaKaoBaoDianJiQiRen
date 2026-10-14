.class public final synthetic Lcn/mucang/sundial/android/log/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcn/mucang/sundial/android/log/LogType;


# direct methods
.method public synthetic constructor <init>(JLcn/mucang/sundial/android/log/LogType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcn/mucang/sundial/android/log/b;->a:J

    iput-object p3, p0, Lcn/mucang/sundial/android/log/b;->b:Lcn/mucang/sundial/android/log/LogType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-wide v0, p0, Lcn/mucang/sundial/android/log/b;->a:J

    iget-object v2, p0, Lcn/mucang/sundial/android/log/b;->b:Lcn/mucang/sundial/android/log/LogType;

    invoke-static {v0, v1, v2}, Lcn/mucang/sundial/android/log/SundialLog;->a(JLcn/mucang/sundial/android/log/LogType;)V

    return-void
.end method
