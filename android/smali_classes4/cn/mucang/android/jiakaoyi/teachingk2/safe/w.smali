.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/safe/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/com/x/b;


# instance fields
.field public final synthetic a:B

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/w;->a:B

    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/w;->b:I

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 2

    iget-byte v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/w;->a:B

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/w;->b:I

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$singleConfigCommand$1;->a(BI)[B

    move-result-object v0

    return-object v0
.end method
