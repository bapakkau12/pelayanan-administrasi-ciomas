<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PengajuanSKIK extends Model
{
    use HasFactory;
    protected $table = 'pengajuan_skik';

    protected $fillable = [
        'anggota_id',
        'ktp',
        'pengantar_rw',
        'no_pengajuan',
        'status',
    ];
    protected static function boot()
    {
        parent::boot();

        static::creating(function ($model) {
            $model->no_pengajuan = (string) \Illuminate\Support\Str::uuid();
        });
    }


    public function anggotaKeluarga()
    {
        return $this->belongsTo(AnggotaKeluarga::class, 'anggota_id');
    }

    protected function createdAt(): Attribute
    {
        return Attribute::make(
            get: fn (string $value) => ReformatDate::updateDateTimeTimezone($value),
        );
    }

    protected function updatedAt(): Attribute
    {
        return Attribute::make(
            get: fn (string $value) => ReformatDate::updateDateTimeTimezone($value),
        );
    }

    public function suratKeluar()
    {
        return $this->morphOne(SuratKeluar::class, 'surat');
    }

    public function penolakan()
    {
        return $this->morphOne(Penolakan::class, 'surat');
    }
}
