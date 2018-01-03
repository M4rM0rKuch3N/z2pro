.class public final Lcom/android/server/backup/BackupManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 354
    new-instance v0, Lcom/android/server/backup/Trampoline;

    invoke-direct {v0, p1}, Lcom/android/server/backup/Trampoline;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    .line 352
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 359
    const-string/jumbo v0, "backup"

    sget-object v1, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 358
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 364
    if-nez p1, :cond_2

    .line 365
    sget-object v4, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-virtual {v4, p1}, Lcom/android/server/backup/Trampoline;->initialize(I)V

    .line 368
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-wrap4(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 372
    sget-object v4, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    iget-object v4, v4, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 374
    .local v2, "r":Landroid/content/ContentResolver;
    const-string/jumbo v4, "backup_enabled"

    const/4 v5, -0x1

    .line 373
    invoke-static {v2, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 375
    .local v1, "enableState":I
    if-ltz v1, :cond_1

    .line 379
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v3, p1}, Lcom/android/server/backup/BackupManagerService;->-wrap20(ZI)V

    .line 381
    const-string/jumbo v3, "backup_enabled"

    const/4 v4, 0x0

    .line 380
    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 390
    .end local v1    # "enableState":I
    .end local v2    # "r":Landroid/content/ContentResolver;
    :cond_1
    :try_start_0
    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-wrap5(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/backup/Trampoline;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :cond_2
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
