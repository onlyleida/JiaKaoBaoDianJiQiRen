.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->a:I

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->b:I

    .line 4
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->c:I

    .line 5
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->d:I

    .line 6
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->e:I

    .line 7
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->f:I

    .line 8
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->g:I

    .line 9
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->h:I

    .line 10
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->i:I

    .line 11
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->j:I

    .line 12
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->k:I

    .line 13
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->l:I

    .line 14
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->m:I

    .line 15
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->n:I

    return-void
.end method


# virtual methods
.method public a()Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->a:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;->collectorHardwareVersion:I

    .line 3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->b:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;->collectorFirmwareVersion:I

    .line 4
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->c:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;->ultrasonic1HardwareVersion:I

    .line 5
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->d:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;->ultrasonic1FirmwareVersion:I

    .line 6
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->e:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;->ultrasonic2HardwareVersion:I

    .line 7
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->f:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;->ultrasonic2FirmwareVersion:I

    .line 8
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->g:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;->safeHardwareVersion:I

    .line 9
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->h:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;->safeFirmwareVersion:I

    .line 10
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->i:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;->throttleHardwareVersion:I

    .line 11
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->j:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;->throttleFirmwareVersion:I

    .line 12
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->k:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;->gearHardwareVersion:I

    .line 13
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->l:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;->gearFirmwareVersion:I

    .line 14
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->m:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;->microwaveHardwareVersion:I

    .line 15
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->n:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;->microwaveFirmwareVersion:I

    return-object v0
.end method
